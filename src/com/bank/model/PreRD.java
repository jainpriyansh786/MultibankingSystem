package com.bank.model;

import java.util.Date;

public class PreRD extends Customer {
	private int id;
	private int srTransId;
	private int tenure;
	private double initialAmount;
	private double preMatureAmount;
	private Date DepositeDate;
	private Date CurrentDate;
	
	
	public int getTenure() {
		return tenure;
	}
	public void setTenure(int tenure) {
		this.tenure = tenure;
	}
	
	public Date getDepositeDate() {
		return DepositeDate;
	}
	public void setDepositeDate(Date depositeDate) {
		DepositeDate = depositeDate;
	}
	public Date getCurrentDate() {
		return new Date();
	}
	public void setCurrentDate(Date currentDate) {
		CurrentDate = currentDate;
	}
	public double getInitialAmount() {
		return initialAmount;
	}
	public void setInitialAmount(double initialAmount) {
		this.initialAmount = initialAmount;
	}
	public double getPreMatureAmount() {
		return preMatureAmount;
	}
	public void setPreMatureAmount(double preMatureAmount) {
		this.preMatureAmount = preMatureAmount;
	}
	public int getSrTransId() {
		return srTransId;
	}
	public void setSrTransId(int srTransId) {
		this.srTransId = srTransId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}


}