using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Camp6._2_Loan_Management_.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoanOfficersController : ControllerBase
    {
        // GET: api/<LoanOfficersController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<LoanOfficersController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<LoanOfficersController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<LoanOfficersController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<LoanOfficersController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
