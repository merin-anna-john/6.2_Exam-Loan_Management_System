using Camp6._2_Loan_Management_.Models;
using System.Collections.Generic;

namespace Camp6._2_Loan_Management_.Repositories
{
    public interface ICustomerRepository
    {
        Task<Loan> ApplyForLoan(Loan loan);
        Task<IEnumerable<Loan>> GetAllLoanRequests();
        Task<IEnumerable<Help>> GetAllHelpQuestions();
        Task<Feedback> AddFeedback(Feedback feedback);

        // Add these method signatures
        Task<Loan> GetLoanById(int id);
        Task<Feedback> GetFeedbackById(int id);
    }
}
