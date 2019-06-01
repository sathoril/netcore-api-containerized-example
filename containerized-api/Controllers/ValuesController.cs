using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace containerized_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        // GET api/values
        [HttpGet]
        public ActionResult<String> Get()
        {
            return "Container running on " + System.Environment.MachineName;
        }

        [HttpPost]
        public ActionResult<String> Post(string name)
        {
            return "Post made by " + name.ToString();
        }
    }
}
