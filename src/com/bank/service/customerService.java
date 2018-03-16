package com.bank.service;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bank.dao.customerDao;
import com.bank.model.Account;
import com.bank.model.Beneficiary;
import com.bank.model.Customer;
import com.bank.model.FixedDeposit;
import com.bank.model.RecurringDeposit;
import com.bank.model.Request;

public class customerService {
	customerDao dao = new customerDao();

	public Customer registerCustomer(Customer customer) throws SQLException {
		Customer customerId = dao.createCustomer(customer);
		return customerId;
	}

	public String addaccount1(Account account, int customerId)
			throws SQLException {

		return dao.addAccount(account, customerId);

	}

	public int createFixedDeposit(FixedDeposit fdeposit, Date matDate,
			float interest) throws SQLException {

		return dao.createFixedDeposit(fdeposit, matDate, interest);
	}

	public void ITextWritePdfFile(FixedDeposit fdeposit, Date matDate,
			float interest) throws SQLException {

		dao.ITextWritePdfFile(fdeposit, matDate, interest);
	}

	public void ITextWritePdfFile1(RecurringDeposit rdeposit, Date matDate,
			float interest, int recurringDepositId) throws SQLException {

		dao.ITextWritePdfFile1(rdeposit, matDate, interest, recurringDepositId);
	}

	public int createRecurringDeposit(RecurringDeposit rdeposit, Date matDate,
			float interest) throws SQLException {

		return dao.createRecurringDeposit(rdeposit, matDate, interest);
	}

	public float getInterest(int customerId, int tenure, double amount)
			throws SQLException {

		return dao.getInterest(customerId, tenure, amount);
	}

	public float getInterestRD(int customerId, int tenure, double amount)
			throws SQLException {
		System.out.println("Entered Service");
		return dao.getInterestRD(customerId, tenure, amount);
	}

	public void deleteFixedDeposit(FixedDeposit fdeposit) throws SQLException {

		dao.deleteFixedDeposit(fdeposit);

	}

	public Date getMaturityDate(int tenure) throws SQLException {
		return dao.getMaturityDate(tenure);
	}

	public String getCustomerPassword(int customerId1) throws SQLException {

		return dao.getPassword(customerId1);

	}

	public boolean addAccount(Account account) throws SQLException {

		// return dao.addAccountDao(account);
		return true;
	}

	public boolean getAmount(double amount, int customerId, long accountNo)
			throws SQLException {
		return dao.getAmount(amount, customerId, accountNo);
	}

	public String addBeneficiary(int customerId, Beneficiary beneficiary)
			throws SQLException {
		return dao.addBeneficiary(customerId, beneficiary);
	}

	public ArrayList<Beneficiary> fundTransfer(int customerId)
			throws SQLException {
		return dao.fundTransfer(customerId);
	}

	public Customer viewUpdateDetails(int customerId) throws SQLException {
		return dao.viewUpdateDetails(customerId);
	}

	public String updateCustomer(Customer c, int customerId)
			throws SQLException {
		return dao.updateCustomer(c, customerId);

	}

	public boolean transferringFunds(int customerId, long custAccountNo,
			long accountNo, double amount) throws SQLException {
		return dao.transferringFunds(customerId, custAccountNo, accountNo,
				amount);
	}

	public ArrayList<Long> getAccounts(int customerId) throws SQLException {
		return dao.getAccounts(customerId);
	}

	public ArrayList<Account> viewAccount(int customerId) throws Exception {

		ArrayList<Account> accountList = dao.viewAccount(customerId);
		return accountList;
	}

	public ArrayList<FixedDeposit> viewFixedDeposit(int customerId)
			throws SQLException {
		return dao.viewFixedDeposit(customerId);

	}	
	
	
	public Double fetchBalance(int customerId,long accountNo)
			throws SQLException {
		return dao.fetchBalance1(customerId,accountNo);

	}	
	public boolean deleteBeneficiary(long accountNo , int customerId) throws SQLException{
		return dao.deleteBeneficiary(accountNo,customerId);
	}
	public Account getAccountDetails(long accountNo) throws SQLException{
		return dao.getAccountDetails(accountNo);
	}
	public boolean sendAccountRequest(Account acc) throws SQLException{
		return dao.sendAccountRequest(acc);
	}
	public boolean getAccountDelete(long accountNo) throws SQLException{
		return dao.getAccountDelete(accountNo);
	}
}
