using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Camp6._2_Loan_Management_.Models;
using Microsoft.EntityFrameworkCore;

namespace Camp6._2_Loan_Management_.Repositories
{
    public class CustomerRepositoryImple : ICustomerRepository
    {
        private readonly LoanManagementSystemFullStackContext _context;

        public CustomerRepositoryImple(LoanManagementSystemFullStackContext context)
        {
            _context = context;
        }

        #region 1. Apply for Loan
        public async Task<Loan> ApplyForLoan(Loan loan)
        {
            if (loan == null)
            {
                throw new ArgumentNullException(nameof(loan), "Loan data is null");
            }

            await _context.Loans.AddAsync(loan);
            await _context.SaveChangesAsync();
            return loan;
        }
        #endregion

        #region 2. Get All Loan Requests
        public async Task<IEnumerable<Loan>> GetAllLoanRequests()
        {
            return await _context.Loans.ToListAsync();
        }
        #endregion

        #region 3. Get All Help Questions
        public async Task<IEnumerable<Help>> GetAllHelpQuestions()
        {
            return await _context.Helps.ToListAsync();
        }
        #endregion

        #region 4. Add Feedback
        public async Task<Feedback> AddFeedback(Feedback feedback)
        {
            if (feedback == null)
            {
                throw new ArgumentNullException(nameof(feedback), "Feedback data is null");
            }

            await _context.Feedbacks.AddAsync(feedback);
            await _context.SaveChangesAsync();
            return feedback;
        }
        #endregion

        #region 5. Get Loan by ID
        public async Task<Loan> GetLoanById(int id)
        {
            return await _context.Loans.FindAsync(id) ?? throw new KeyNotFoundException($"Loan with ID {id} not found.");
        }
        #endregion

        #region 6. Get Feedback by ID
        public async Task<Feedback> GetFeedbackById(int id)
        {
            return await _context.Feedbacks.FindAsync(id) ?? throw new KeyNotFoundException($"Feedback with ID {id} not found.");
        }
        #endregion
    }
}
