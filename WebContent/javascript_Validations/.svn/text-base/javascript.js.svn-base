function validate() {

	var x = document.getElementById("name").value;

	// Validation for name
	if ("" == x) {
		var msg1 = "";
		msg1 += "<br>Name must be filled out.";
		document.getElementById("name1").innerHTML = msg1;
		return false;

	}
	if (!x.match(/^[A-Za-z ]+$/)) {
		var msg2 = "";

		msg2 += "<br><label style='color:red;'>Please enter Name in letters.</label>";
		document.getElementById("name1").innerHTML = msg2;
		return false;
	}
	if(x.length>30){
		var msg2 = "";

		msg2 += "<br><label style='color:red;'>Name length should be less than 30.</label>";
		document.getElementById("name1").innerHTML = msg2;
		return false;
	}
	
	// AGE
	var y = document.getElementById("age").value;

	if ("" == y) {

		var msg3 = "";
		msg3 += "<br><label style='color:red;'>Please enter this field</label>";
		document.getElementById("age1").innerHTML = msg3;
		return false;
	}

	if (isNaN(y)) {

		var msg4 = "";
		msg4 += "<br><label style='color:red;'>Must be Numeric.</label>";
		document.getElementById("age1").innerHTML = msg4;
		return false;
	}
	
	var dob = document.getElementById("dob").value;
	var rxDatePattern = /^(\d{4})(\/|-)(\d{1,2})(\/|-)(\d{1,2})$/;
	if ("" == dob) {

		var msg5 = "";
		msg5 += "<br><label style='color:red;'>Please enter BirthDate</label>";
		document.getElementById("dob1").innerHTML = msg5;
		return false;
	}

	if (!dob.match(rxDatePattern)) {
        
		var msg25 = "";
		msg25 += "<br><label style='color:red;'>Please enter valid Birth date format (YYYY-MM-DD).</label>";
		document.getElementById("dob1").innerHTML = msg25;
		return false;
	}
	
	var address = document.getElementById("address").value;
	if((!address)) {
		var msg7 = "";
		msg7 += "<br><label style='color:red;'>Address must be filled out.</label>";
		document.getElementById("address1").innerHTML = msg7;
		return false;
	}

	
	
	var salary = document.getElementById("salary").value;
	alert(salary);
	
    if(!salary || salary<=0){
	
	var msg10 = "";
	msg10 += "<br><label style='color:red;'>Salary must be filled</label>";
	document.getElementById("salary1").innerHTML = msg10;
	return false;
	
    }
    if (isNaN(salary)) {
	var msg10 = "";
	msg10 += "<br><label style='color:red;'>Salary must be filled and in Numeric.</label>";
	document.getElementById("salary1").innerHTML = msg10;
	return false;

    }
	var a = document.getElementById("pan").value;

	var Val = /^[A-Z]{5}[0-9]{4}[A-Z]{1}+$/;
	if (a == "") {

		var msg11 = "";
		msg11 += "<br><label style='color:red;'>Please fill pan</label>";
		document.getElementById("pan1").innerHTML = msg11;
		return false;
	} 
	if (!a.match(Val)) {
		var msg21 = "";
		msg21 += "<br><label style='color:red;'>Please fill Valid PAN format (ABCDE1234A)</label>";
		document.getElementById("pan1").innerHTML = msg21;
		return false;
	}
	// email
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	var email = document.getElementById("emailId").value;
	   if (email == "") {
			var msg23 = "";
			msg23 += "<br><label style='color:red;'>Please Enter your EMail ID</label>";
			document.getElementById("beneficiaryEmailId1").innerHTML = msg23;
			return false;
		}

	if (reg.test(email) == false) {
		var msg12 = "";
		msg12 += "<br><label style='color:red;'>Please Enter Valid Mail ID</label>";
		document.getElementById("emailId1").innerHTML = msg12;
		return false;

	}

 
	
	var numreg = /^[0-9]+$/;
	var phoneNumber = document.getElementById("phone").value;
	if ("" == phoneNumber || trim(phoneNumber) == "") {
		var msg13 = "";
		msg13 += "<br><label style='color:red;'>Contact number must be filled out.</label>";
		document.getElementById("phone1").innerHTML = msg13;
		return false;
	} 
	if (!numreg.test(phoneNumber)) {
		var msg14 = "";
		msg14 += "<br><label style='color:red;'>Contact number must be Numeric.</label>";
		document.getElementById("phone1").innerHTML = msg14;
		return false;
	}
	if (phoneNumber.length != 10) {
		var msg15 = "";
		msg15 += "<br><label style='color:red;'>Contact number must be within 10 digits</label>";
		document.getElementById("phone1").innerHTML = msg15;
		return false;
	}
	if(phoneNumber.charAt(0)==0){
		var msg15 = "";
		msg15 += "<br><label style='color:red;'>Enter valid number</label>";
		document.getElementById("phone1").innerHTML = msg15;
		return false;
	}
	
   return true;
}
function validate2() {
    alert("validate2");
	var a = document.getElementById("name").value;
	var b = document.getElementById("accountNo").value;
	var c = document.getElementById("bankname").value;
	var d = document.getElementById("branch").value;
	var e = document.getElementById("ifsccode").value;
	var f = document.getElementById("emailId").value;

	if ("" == a) {
		var msg1 = "";
		msg1 += "<br>Beneficiary Name must be filled out.";
		document.getElementById("beneficiaryname1").innerHTML = msg1;
		return false;

	} 
	if (!a.match(/^[A-Za-z ]+$/)) {
		var msg2 = "";

		msg2 += "<br><label style='color:red;'>Please enter letters only in BeneficiaryName.</label>";
		document.getElementById("beneficiaryname1").innerHTML = msg2;
		return false;
	}

	if ("" == b) {

		var msg3 = "";
		msg3 += "<br><label style='color:red;'>Please enter AccountNo</label>";
		document.getElementById("beneficiaryaccountNo1").innerHTML = msg3;
		return false;
	}

   if (isNaN(b)) {

		var msg4 = "";
		msg4 += "<br><label style='color:red;'>Must be Numeric.</label>";
		document.getElementById("beneficiaryaccountNo1").innerHTML = msg4;
		return false;
	}

	if (b.length != 5) {
		var msg5 = "";
		msg5 += "<br><label style='color:red;'>Account Number must be within 5 digits</label>";
		document.getElementById("beneficiaryaccountNo1").innerHTML = msg5;
		return false;
	}

	if ("" == c) {
		var msg6 = "";
		msg6 += "<br>Bank Name must be filled out.";
		document.getElementById("beneficiarybankname1").innerHTML = msg6;
		return false;

	}
	if (!c.match(/^[A-Za-z ]+$/)) {
		var msg7 = "";

		msg7 += "<br><label style='color:red;'>Please enter letters only in BankName.</label>";
		document.getElementById("beneficiarybankname1").innerHTML = msg7;
		return false;
	}

	if ("" == d) {
		var msg8 = "";
		msg8 += "<br>Branch Name must be filled out.";
		document.getElementById("beneficiarybranchname1").innerHTML = msg8;
		return false;

	} 
	if (!d.match(/^[A-Za-z ]+$/)) {
		var msg9 = "";

		msg9 += "<br><label style='color:red;'>Please enter letters only in BranchName.</label>";
		document.getElementById("beneficiarybranchname1").innerHTML = msg9;
		return false;
	}

	if ("" == e) {

		var msg10 = "";
		msg10 += "<br><label style='color:red;'>Please enter Ifsc Code</label>";
		document.getElementById("beneficiaryifsc1").innerHTML = msg10;
		return false;
	}

	if (isNaN(e)) {

		var msg11 = "";
		msg11 += "<br><label style='color:red;'>Must be Numeric.</label>";
		document.getElementById("beneficiaryifsc1").innerHTML = msg11;
		return false;
	}

	if (e.length != 5) {
		var msg12 = "";
		msg12 += "<br><label style='color:red;'>Ifsc code must be within 5 digits</label>";
		document.getElementById("beneficiaryifsc1").innerHTML = msg12;
		return false;
	}

	

	if (f == "") {
		var msg13 = "";
		msg13 += "<br><label style='color:red;'>Please Enter Beneficiary EMail ID</label>";
		document.getElementById("beneficiaryEmailId1").innerHTML = msg13;
		return false;
	} 
		var atpos = f.indexof("@");
		var dotpos = f.lastIndexOf(".");
		if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= f.length) {
			var msg12 = "";
			msg12 += "<br><label style='color:red;'>Please Enter Valid Mail ID</label>";
			document.getElementById("beneficiaryEmailId1").innerHTML = msg12;
			return false;
		}
	
	return true;
}
function validate3() {
	var a = document.getElementById("bankLogin").value;
	var b = document.getElementById("bankpassword").value;
	if ("" == a) {

		var msg10 = "";
		msg10 += "<br><label style='color:red;'>Please enter BankId</label>";
		document.getElementById("banklogin1").innerHTML = msg10;
		return false;
	}

	else if (isNaN(a)) {

		var msg11 = "";
		msg11 += "<br><label style='color:red;'>BankId incorrect.</label>";
		document.getElementById("banklogin1").innerHTML = msg11;
		return false;
	}

	if ("" == b) {

		var msg10 = "";
		msg10 += "<br><label style='color:red;'>Please enter password</label>";
		document.getElementById("bankpassword1").innerHTML = msg10;
		return false;
	}

	else if (isNaN(b)) {

		var msg11 = "";
		msg11 += "<br><label style='color:red;'>password is incorrect.</label>";
		document.getElementById("bankpassword1").innerHTML = msg11;
		return false;
	}
	return true;

}
function validate4() {
	var a = document.getElementById("name").value;

	if ("" == a) {
		var msg1 = "";
		msg1 += "<br>BankName must be filled out.";
		document.getElementById("bankNameRegister1").innerHTML = msg1;
		return false;

	} else if (!a.match(/^[A-Za-z ]+$/)) {
		var msg2 = "";

		msg2 += "<br><label style='color:red;'>Please enter letters only in BankName.</label>";
		document.getElementById("bankNameRegister1").innerHTML = msg2;
		return false;
	}

}

function validate5() {

	var a = document.getElementById("branch").value;
	var b = document.getElementById("ifsc").value;
	var c = document.getElementById("location").value;
	var d = document.getElementById("contactPerson").value;


	if ("" == a) {
		var msg8 = "";
		msg8 += "<br>Branch Name must be filled out.";
		document.getElementById("branch1").innerHTML = msg8;
		return false;

	} else if (!a.match(/^[A-Za-z ]+$/)) {
		var msg9 = "";

		msg9 += "<br><label style='color:red;'>Please enter letters only in BranchName.</label>";
		document.getElementById("branch1").innerHTML = msg9;
		return false;
	}

	if ("" == b) {

		var msg10 = "";
		msg10 += "<br><label style='color:red;'>Please enter Ifsc Code</label>";
		document.getElementById("ifsc1").innerHTML = msg10;
		return false;
	}

	else if (isNaN(b)) {

		var msg11 = "";
		msg11 += "<br><label style='color:red;'>Must be Numeric.</label>";
		document.getElementById("ifsc1").innerHTML = msg11;
		return false;
	}

	else if (b.length != 5) {
		var msg12 = "";
		msg12 += "<br><label style='color:red;'>Ifsc code must be within 5 digits</label>";
		document.getElementById("ifsc1").innerHTML = msg12;
		return false;
	}

	if ("" == c) {
		var msg8 = "";
		msg8 += "<br>location must be filled out.";
		document.getElementById("location1").innerHTML = msg8;
		return false;

	} else if (!c.match(/^[A-Za-z ]+$/)) {
		var msg9 = "";

		msg9 += "<br><label style='color:red;'>Please enter letters only in location.</label>";
		document.getElementById("location1").innerHTML = msg9;
		return false;
	}

	if ("" == d) {
		var msg8 = "";
		msg8 += "<br>Contact Person must be filled out.";
		document.getElementById("contactPerson1").innerHTML = msg8;
		return false;

	} else if (!d.match(/^[A-Za-z ]+$/)) {
		var msg9 = "";

		msg9 += "<br><label style='color:red;'>Please enter letters only in this field.</label>";
		document.getElementById("contactPerson1").innerHTML = msg9;
		return false;
	}

	var numreg = /^[0-9]+$/;
	var phoneNumber = document.getElementById("contactNo").value;
	if ("" == phoneNumber) {
		var msg13 = "";
		msg13 += "<br><label style='color:red;'>Contact number must be filled out.</label>";
		document.getElementById("contactNo1").innerHTML = msg13;
		return false;
	} else if (!numreg.test(phoneNumber)) {
		var msg14 = "";
		msg14 += "<br><label style='color:red;'>Contact number must be Numeric.</label>";
		document.getElementById("contactNo1").innerHTML = msg14;
		return false;
	} else if (phoneNumber.length != 10) {
		var msg15 = "";
		msg15 += "<br><label style='color:red;'>Contact number must be within 10 digits</label>";
		document.getElementById("contactNo1").innerHTML = msg15;
		return false;
	}else if(phoneNumber.charAt(0)==0){
		var msg15 = "";
		msg15 += "<br><label style='color:red;'>Enter valid number</label>";
		document.getElementById("phone1").innerHTML = msg15;
		return false;
	}
	return true;
}
function validate6() {

	
	var a = document.getElementById("customer").value;
	var b = document.getElementById("customerpassword").value;
	

	if ("" == a) {
		alert("in if");
		var msg10 = "";
		msg10 += "<br><label style='color:red;'>Please enter CustomerId</label>";
		document.getElementById("customerlogin1").innerHTML = msg10;
		return false;
	} else {
		if (isNaN(a)) {

			var msg11 = "";
			msg11 += "<br><label style='color:red;'>CustomerId incorrect.</label>";
			document.getElementById("customerlogin1").innerHTML = msg11;
			return false;
		}
	}
	if ("" == b) {

		var msg10 = "";
		msg10 += "<br><label style='color:red;'>Please enter password</label>";
		document.getElementById("customerpassword1").innerHTML = msg10;
		return false;
	}

	else if (isNaN(b)) {

		var msg11 = "";
		msg11 += "<br><label style='color:red;'>password is incorrect.</label>";
		document.getElementById("customerpassword1").innerHTML = msg11;
		return false;
	}
	return true;

}

function validate7(){

	var b = document.getElementById("ename").value;
	var c = document.getElementById("mail").value;
	
	
	if ("" == b) {
		var msg8 = "";
		msg8 += "<br>Employee Name must be filled out.";
		document.getElementById("ename1").innerHTML = msg8;
		return false;

	} else if (!b.match(/^[A-Za-z ]+$/)) {
		var msg9 = "";

		msg9 += "<br><label style='color:red;'>Please enter letters only in this field.</label>";
		document.getElementById("ename1").innerHTML = msg9;
		return false;
	}
	
	
	
	if (c == "") {
		var msg13 = "";
		msg13 += "<br><label style='color:red;'>Please Enter Employee EMail ID</label>";
		document.getElementById("mail1").innerHTML = msg13;
		return false;
	}

	var numreg = /^[0-9]+$/;
	var phoneNumber = document.getElementById("empcontactno").value;
	if ("" == phoneNumber) {
		var msg13 = "";
		msg13 += "<br><label style='color:red;'>Contact number must be filled out.</label>";
		document.getElementById("empcontactno1").innerHTML = msg13;
		return false;
	} else if (!numreg.test(phoneNumber)) {
		var msg14 = "";
		msg14 += "<br><label style='color:red;'>Contact number must be Numeric.</label>";
		document.getElementById("empcontactno1").innerHTML = msg14;
		return false;
	} else if (phoneNumber.length != 10) {
		var msg15 = "";
		msg15 += "<br><label style='color:red;'>Contact number must be within 10 digits</label>";
		document.getElementById("empcontactno1").innerHTML = msg15;
		return false;
	}else if(phoneNumber.charAt(0)==0){
		var msg15 = "";
		msg15 += "<br><label style='color:red;'>Enter valid number</label>";
		document.getElementById("phone1").innerHTML = msg15;
		return false;
	}
	return true;
}
function validate8(){
	
	var valid=false;
	var radio=document.getElementsByName("radioselected");
	var i=0;
	
	
	while(!valid&&i<radio.length){
		if(radio[i].checked)
			valid=true;
		
		i++;
	}
	if(!valid){
		var msg11 = "";
		msg11 += "<br><label style='color:red;'>Please select beneficiary.</label>";
		document.getElementById("radio1").innerHTML = msg11;
		return valid;
	}
	
    
	var a = document.getElementById("amount").value;
	   
		
		if ("" == a || a<=0) {

			var msg3 = "";
			msg3 += "<br><label style='color:red;'>Please provide correct amount</label>";
			document.getElementById("amount1").innerHTML = msg3;
			return false;
		}

		if (isNaN(a)) {

			var msg4 = "";
			msg4 += "<br><label style='color:red;'>Must be Numeric.</label>";
			document.getElementById("amount1").innerHTML = msg4;
			return false;
		}
		
		if(a>15000){
			var msg5 = "";
			msg5 += "<br><label style='color:red;'>Amount should be less than 15000.</label>";
			document.getElementById("amount1").innerHTML = msg5;
			return false;
		}
	
		

	
	return true;
	
}
function validate35(){
	var a = document.getElementById("amount").value;
	   
	
	if ("" == a || a<=0) {

		var msg3 = "";
		msg3 += "<br><label style='color:red;'>Please provide correct amount</label>";
		document.getElementById("amount1").innerHTML = msg3;
		return false;
	}

	if (isNaN(a)) {

		var msg4 = "";
		msg4 += "<br><label style='color:red;'>Must be Numeric.</label>";
		document.getElementById("amount1").innerHTML = msg4;
		return false;
	}
	
	if(a>15000){
		var msg5 = "";
		msg5 += "<br><label style='color:red;'>Amount should be less than 15000.</label>";
		document.getElementById("amount1").innerHTML = msg5;
		return false;
	}
	return true;
}
function validate20(){
	var valid=false;
	var radio=document.getElementsByName("radioselected");
	var i=0;
	
	
	while(!valid&&i<radio.length){
		if(radio[i].checked)
			valid=true;
		
		i++;
	}
	if(!valid){
		var msg11 = "";
		msg11 += "<br><label style='color:red;'>Please select account.</label>";
		document.getElementById("radio1").innerHTML = msg11;
		return valid;
	}
	
}
function validate9(){
	
	var a = document.getElementById("tenure").value;
	var b= document.getElementById("rdamount").value;
	var c = document.getElementById("day").value;
	if(c==""){
		
		var msg6 = "";
		msg6 += "<br><label style='color:red;'>Please fill day </label>";
		document.getElementById("day1").innerHTML = msg6;
		return false;
	}
	else if(c<1 || c>30)
		{var msg6 = "";
	msg6 += "<br><label style='color:red;'>Please enter valid day</label>";
	document.getElementById("day1").innerHTML = msg6;
	return false;}
	else if (isNaN(c)) {

		var msg4 = "";
		msg4 += "<br><label style='color:red;'>Must be Numeric.</label>";
		document.getElementById("day1").innerHTML = msg4;
		return false;
	}
	
	if(b=="" || b==0){
		
		
		var msg6 = "";
		msg6 += "<br><label style='color:red;'>Please fill rdamount</label>";
		document.getElementById("rdamount1").innerHTML = msg6;
		return false;
		
	}
	
	else if (isNaN(b)) {

		var msg7 = "";
		msg7 += "<br><label style='color:red;'>Must be Numeric.</label>";
		document.getElementById("rdamount1").innerHTML = msg7;
		return false;
	}
	
if(a==""){
		
		var msg6 = "";
		msg6 += "<br><label style='color:red;'>Please fill tenure </label>";
		document.getElementById("tenure1").innerHTML = msg6;
		return false;
	}
	else if(a<24 || a>60)
		{var msg6 = "";
	msg6 += "<br><label style='color:red;'>Please enter valid tenure should be between 24 t0 60</label>";
	document.getElementById("tenure1").innerHTML = msg6;
	return false;}
	else if (isNaN(a)) {

		var msg4 = "";
		msg4 += "<br><label style='color:red;'>Must be Numeric.</label>";
		document.getElementById("tenure1").innerHTML = msg4;
		return false;
	}
	
	return true;
	
	
}
function validate10(){
	
	
	var a = document.getElementById("adminLogin").value;
	var b = document.getElementById("adminpassword").value;
	

	if ("" == a) {
		alert("in if");
		var msg10 = "";
		msg10 += "<br><label style='color:red;'>Please enter AminId</label>";
		document.getElementById("adminlogin1").innerHTML = msg10;
		return false;
	} else {
		if (isNaN(a)) {

			var msg11 = "";
			msg11 += "<br><label style='color:red;'>AdminId incorrect.</label>";
			document.getElementById("adminlogin1").innerHTML = msg11;
			return false;
		}
	}
	if ("" == b) {

		var msg10 = "";
		msg10 += "<br><label style='color:red;'>Please enter password</label>";
		document.getElementById("adminpassword1").innerHTML = msg10;
		return false;
	}

	else if (!isNaN(b)) {

		var msg11 = "";
		msg11 += "<br><label style='color:red;'>password is incorrect.</label>";
		document.getElementById("adminpassword1").innerHTML = msg11;
		return false;
	}
	return true;

	
}
function validate11(){
	
	var valid=false;
	var radio=document.getElementsByName("radioselected");
	var i=0;
	
	while(!valid&&i<radio.length){
		if(radio[i].checked)
			valid=true;
		i++;
	}
	if(!valid){
		var msg11 = "";
		msg11 += "<br><label style='color:red;'>Please select beneficiary.</label>";
		document.getElementById("adminpassword1").innerHTML = msg11;
		
	}
	return valid;
}
function validate12(){
	
	var a = document.getElementById("tenure").value;
	var b= document.getElementById("amount").value;
      if(!a){
		
		var msg6 = "";
		msg6 += "<br><label style='color:red;'>Please fill tenure </label>";
		document.getElementById("tenure1").innerHTML = msg6;
		return false;
	}
	else if(a<24 || a>60)
		{var msg6 = "";
	msg6 += "<br><label style='color:red;'>Please enter valid tenure should be between 24 t0 60</label>";
	document.getElementById("tenure1").innerHTML = msg6;
	return false;}
	else if (isNaN(a)) {

		var msg4 = "";
		msg4 += "<br><label style='color:red;'>Must be Numeric.</label>";
		document.getElementById("tenure1").innerHTML = msg4;
		return false;
	}
if(b=="" || b==0){
	
	
	var msg6 = "";
	msg6 += "<br><label style='color:red;'>Please fill rdamount</label>";
	document.getElementById("amount1").innerHTML = msg6;
	return false;
	
}

else if (isNaN(b)) {

	var msg7 = "";
	msg7 += "<br><label style='color:red;'>Must be Numeric.</label>";
	document.getElementById("amount1").innerHTML = msg7;
	return false;
}else if(b<10000){
	var msg7 = "";
	msg7 += "<br><label style='color:red;'>Amount should be greater than 10000.</label>";
	document.getElementById("amount1").innerHTML = msg7;
	return false;
}
var valid=false;
var radio=document.getElementsByName("renewal");
var i=0;

while(!valid&&i<radio.length){
	if(radio[i].checked)
		valid=true;
	i++;
}
if(!valid){
	var msg11 = "";
	msg11 += "<br><label style='color:red;'>Please select beneficiary.</label>";
	document.getElementById("radio1").innerHTML = msg11;
	return valid;
}
return true;
}
