using Camp6._2_Loan_Management_.Models;
using Stripe;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Camp6._2_Loan_Management_.Repositories
{
    public interface IAdminRepository
    {
        Task<IEnumerable<Customer>> GetCustomersAsync();
        Task<Customer> GetCustomerByIdAsync(int id);
        Task ApproveCustomerAsync(int id);
        Task RejectCustomerAsync(int id);

        //Task<IEnumerable<LoanOfficer>> GetLoanOfficersAsync();
        //Task<LoanOfficer> GetLoanOfficerByIdAsync(int id);
        Task ApproveLoanOfficerAsync(int id);
        Task RejectLoanOfficerAsync(int id);

        Task<IEnumerable<Loan>> GetLoanRequestsAsync();
        Task<Loan> GetLoanRequestByIdAsync(int id);

        Task<IEnumerable<BackgroundVerification>> GetBackgroundVerificationsAsync();
        Task<BackgroundVerification> GetBackgroundVerificationByIdAsync(int id);
        Task UpdateBackgroundVerificationAsync(BackgroundVerification verification);
        Task DeleteBackgroundVerificationAsync(int id);

        Task<IEnumerable<LoanVerification>> GetLoanVerificationsAsync();
        Task<LoanVerification> GetLoanVerificationByIdAsync(int id);
        Task UpdateLoanVerificationAsync(LoanVerification verification);
        Task DeleteLoanVerificationAsync(int id);

        Task<IEnumerable<Help>> GetHelpQuestionsAsync();
        Task AddHelpQuestionAsync(Help help);
        Task UpdateHelpQuestionAsync(Help help);

        Task<IEnumerable<Feedback>> GetFeedbackAsync();
    }
}
