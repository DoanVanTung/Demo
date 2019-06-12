package com.journaldev.spring.model;

public class SinhVien {
	private String masv;
	private String hoten;
	private int age;
	private String date;
	private String gioitinh;
	private String sdt;
	private String diachi;
	public SinhVien() {
	}
	public SinhVien(String masv, String hoten, int age, String date, String gioitinh, String sdt, String diachi) {
		super();
		this.masv = masv;
		this.hoten = hoten;
		this.age = age;
		this.date = date;
		this.gioitinh = gioitinh;
		this.sdt = sdt;
		this.diachi = diachi;
	}
	public String getMasv() {
		return masv;
	}
	public void setMasv(String masv) {
		this.masv = masv;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getGioitinh() {
		return gioitinh;
	}
	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
}
