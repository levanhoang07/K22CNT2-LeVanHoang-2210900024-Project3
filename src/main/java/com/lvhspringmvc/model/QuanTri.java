package com.lvhspringmvc.model;

public class QuanTri {
    private int maQuanTri;
    private String hoTen;
    private String tenDangNhap;
    private String matKhau;
    private String email;
    private String soDienThoai;

    public QuanTri() {}

    public QuanTri(int maQuanTri, String hoTen, String tenDangNhap, String matKhau, String email, String soDienThoai) {
        this.maQuanTri = maQuanTri;
        this.hoTen = hoTen;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.email = email;
        this.soDienThoai = soDienThoai;
    }

    // Getter & Setter
    public int getMaQuanTri() {
        return maQuanTri;
    }

    public void setMaQuanTri(int maQuanTri) {
        this.maQuanTri = maQuanTri;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

	public String getTenDangNhap() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getMatKhau() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getSoDienThoai() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
