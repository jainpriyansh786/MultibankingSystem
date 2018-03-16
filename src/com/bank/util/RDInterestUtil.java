package com.bank.util;

public class RDInterestUtil {
	public static double getInterest(double amount,int age,int month){
		double amountAftInterest=0;
		
			
			  /***************AGE   <  60 *******************************/
			if(age<60){
				if(month>=12&& month<=23){
					amountAftInterest= 8.50;
				}
				else if(month>=24 && month<=35){
					amountAftInterest=9.00;
				}
				else if(month>=36 && month<=47){
					amountAftInterest= 9.25;
				}
				else if(month>=48 && month<=60){
					amountAftInterest= 9.5;
				}
				
				else{
					amountAftInterest=0;
				}
			}
			else if(age>60){
				
					/*****************AGE> 60 *****************************/					
				if(month>=12&& month<=23){
					amountAftInterest= 9.00;
				}
				else if(month>=24 && month<=35){
					amountAftInterest=9.50;
				}
				else if(month>=36 && month<=47){
					amountAftInterest= 9.75;
				}
				else if(month>=48 && month<=60){
					amountAftInterest= 10;
				}
				
				else{
					amountAftInterest=0;
				}
			}

		
		
		return amountAftInterest;
	}
}