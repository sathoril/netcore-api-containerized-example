# Defines the first layer of the whole container, the image that contains the .NET Core image
FROM microsoft/dotnet:2.2.0-aspnetcore-runtime
FROM mcr.microsoft.com/dotnet/core/sdk:2.2

# Defines the container working directory
WORKDIR /app

# Copy all files inside publish/netcoreapp2.2 from the project itself to "/app" folder inside the container
COPY "./containerized-api/" "./dotnet-application/"

WORKDIR /app/dotnet-application

RUN echo "\n$(pwd)\n"
RUN echo "\n$(ls -l)\n"

RUN dotnet restore
RUN dotnet build -c Release

# Sets the url that the server will listen to
ENV ASPNETCORE_URLS="http://*:80"

# Sets the port where the application will be exposed
EXPOSE 80/tcp

# Sets what command container will execute when it starts
ENTRYPOINT ["dotnet", "./bin/Release/netcoreapp2.2/containerized-api.dll"]
