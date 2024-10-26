using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Camp6._2_Loan_Management_.Models;
using Camp6._2_Loan_Management_.Repositories;

namespace Camp6._2_Loan_Management_.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomersController : ControllerBase
    {
        private readonly ICustomerRepository _customerRepository;

        public CustomersController(ICustomerRepository customerRepository)
        {
            _customerRepository = customerRepository;
        }

        #region 1. Apply for Loan
        [HttpPost("apply")]
        public async Task<IActionResult> ApplyForLoan([FromBody] Loan loan)
        {
            if (loan == null)
            {
                return BadRequest("Loan data is null.");
            }

            try
            {
                var createdLoan = await _customerRepository.ApplyForLoan(loan);
                return CreatedAtAction(nameof(GetLoanById), new { id = createdLoan.LoanId }, createdLoan);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"An error occurred while applying for the loan: {ex.Message}");
            }
        }
        #endregion

        #region 2. Get All Loan Requests
        [HttpGet("loans")]
        public async Task<IActionResult> GetAllLoanRequests()
        {
            try
            {
                var loans = await _customerRepository.GetAllLoanRequests();
                return Ok(loans);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"An error occurred while fetching loan requests: {ex.Message}");
            }
        }
        #endregion

        #region 3. Get All Help Questions
        [HttpGet("help")]
        public async Task<IActionResult> GetAllHelpQuestions()
        {
            try
            {
                var helpQuestions = await _customerRepository.GetAllHelpQuestions();
                return Ok(helpQuestions);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"An error occurred while fetching help questions: {ex.Message}");
            }
        }
        #endregion

        #region 4. Add Feedback
        [HttpPost("feedback")]
        public async Task<IActionResult> AddFeedback([FromBody] Feedback feedback)
        {
            if (feedback == null)
            {
                return BadRequest("Feedback data is null.");
            }

            try
            {
                var createdFeedback = await _customerRepository.AddFeedback(feedback);
                return CreatedAtAction(nameof(GetFeedbackById), new { id = createdFeedback.FeedbackId }, createdFeedback);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"An error occurred while adding feedback: {ex.Message}");
            }
        }
        #endregion

        #region Helper Methods
        [HttpGet("loans/{id}")]
        public async Task<IActionResult> GetLoanById(int id)
        {
            var loan = await _customerRepository.GetLoanById(id);
            if (loan == null) return NotFound($"Loan with ID {id} not found.");
            return Ok(loan);
        }

        [HttpGet("feedback/{id}")]
        public async Task<IActionResult> GetFeedbackById(int id)
        {
            var feedback = await _customerRepository.GetFeedbackById(id);
            if (feedback == null) return NotFound($"Feedback with ID {id} not found.");
            return Ok(feedback);
        }
        #endregion
    }
}
