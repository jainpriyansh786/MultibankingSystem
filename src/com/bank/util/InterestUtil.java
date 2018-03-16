package com.bank.util;

public class InterestUtil {
	public static double getInterest(double amount,int age,int month){
		double amountAftInterest=0;
		
		/*************AMOUNT > 10000 AND <10000000*******************/
		if((amount<1000000)&&(amount>=10000)){
			
			  /***************AGE   <  60 *******************************/
			if(age<60){
				if(month>=3&& month<=5){
					amountAftInterest= 7.00;
				}
				else if(month>=6 && month<=9){
					amountAftInterest=7.25;
				}
				else if(month>=10 && month<=12){
					amountAftInterest= 7.75;
				}
				else if(month>=13 && month<=15){
					amountAftInterest= 8.00;
				}
				else if(month>=16 && month<=18){
					amountAftInterest= 8.25;
				}
				else if(month>=19 && month<=21){
					amountAftInterest=8.50;
				}
				else if(month>=22 && month<=24){
					amountAftInterest=8.75;
				}
				else if(month>=25 && month<=27){
					amountAftInterest=9.00;
				}
				else{
					amountAftInterest=1;
				}
			}
			else if(age>60){
				
					/*****************AGE> 60 *****************************/					
				if(month>=3&& month<=5){
					amountAftInterest= 7.50;
				}
				else if(month>=6 && month<=9){
					amountAftInterest=7.75;
				}
				else if(month>=10 && month<=12){
					amountAftInterest=8.25;
				}
				else if(month>=13 && month<=15){
					amountAftInterest=8.50;
				}
				else if(month>=16 && month<=18){
					amountAftInterest=8.75;
				}
				else if(month>=19 && month<=21){
					amountAftInterest=9.00;
				}
				else if(month>=22 && month<=24){
					amountAftInterest=9.25;
				}
				else if(month>=25 && month<=27){
					amountAftInterest=9.50;
				}
			}

		}
		else if(amount>=1000000){
			if(age<60){
				if(month>=24 && month<=35){
					amountAftInterest=9.05;
				}
				else if(month>=36 && month<=47){
					amountAftInterest=9.15;
				}
				else if(month>=48 & month<=60){
					amountAftInterest=8.90;
				}
			}
			else if(age>60){
				if(month>=24 && month<=35){
					amountAftInterest=9.55;
				}
				else if(month>=36 && month<=47){
					amountAftInterest=9.65;
				}
				else if(month>=48 & month<=60){
					amountAftInterest=9.40;
				}

			}

		}
		return amountAftInterest;
	}
}


