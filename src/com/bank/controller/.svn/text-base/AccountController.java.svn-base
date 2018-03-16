package com.bank.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bank.model.Account;
import com.bank.service.AccountService;


/**
 * Servlet implementation class AccountController
 */
@WebServlet("/AccountController")
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		System.out.println(action);
		if("accountview".equals(action))
		{
			try{
				
			
			
			//call service layer to search customer search
			
				AccountService aService = new AccountService();
			ArrayList<Account> accountList = aService.viewAccount();
			
			//Share the matched customers details with view
			System.out.println(accountList.size());
			
			request.setAttribute("accountList", accountList);
			RequestDispatcher reqDispatcher = request.getRequestDispatcher("viewAllAccounts.jsp");
			reqDispatcher.forward(request, response);
		} catch (Exception e) {
			System.out.println(e);
		}
		}
	}


	}


