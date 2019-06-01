// Commands for deploy .NET CORE WEBAPI to a docker container

1 - Build the application with "dotnet build -c Release"

2 - Build the docker image executing the command "docker build -t <image-name> ." where the Dockerfile is

3 - Start the container with: "docker run -d -p 8080:90 --name <container-name> <image-name>"
	-d => Sets the container to be detached, so it keeps the container UP even if theres no 		request to it.
	-p 8080:80 => Maps the port where the container will be exposed for our localhost
	--name => Container name

4 - Just make the request you want from "http://localhost:8080"
	



