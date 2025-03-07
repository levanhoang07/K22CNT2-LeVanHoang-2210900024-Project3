package com.lvhspringmvc.model;

public class QuanTri {
    private Integer lvhMaQuanTri;
    private String lvhHoTen;
    private String lvhTenDangNhap;
    private String lvhMatKhau;
    private String lvhEmail;
    private String lvhSoDienThoai;

    // Constructor mặc định
    public QuanTri() {
    }

    // Constructor có tham số
    public QuanTri(Integer lvhMaQuanTri, String lvhHoTen, String lvhTenDangNhap, String lvhMatKhau, String lvhEmail, String lvhSoDienThoai) {
        this.lvhMaQuanTri = lvhMaQuanTri;
        this.lvhHoTen = lvhHoTen;
        this.lvhTenDangNhap = lvhTenDangNhap;
        this.lvhMatKhau = lvhMatKhau;
        this.lvhEmail = lvhEmail;
        this.lvhSoDienThoai = lvhSoDienThoai;
    }

    // Getter và Setter đầy đủ
    public Integer getLvhMaQuanTri() {
        return lvhMaQuanTri;
    }

    public void setLvhMaQuanTri(Integer lvhMaQuanTri) {
        this.lvhMaQuanTri = lvhMaQuanTri;
    }

    public String getLvhHoTen() {
        return lvhHoTen;
    }

    public void setLvhHoTen(String lvhHoTen) {
        this.lvhHoTen = lvhHoTen;
    }

    public String getLvhTenDangNhap() {
        return lvhTenDangNhap;
    }

    public void setLvhTenDangNhap(String lvhTenDangNhap) {
        this.lvhTenDangNhap = lvhTenDangNhap;
    }

    public String getLvhMatKhau() {
        return lvhMatKhau;
    }

    public void setLvhMatKhau(String lvhMatKhau) {
        this.lvhMatKhau = lvhMatKhau;
    }

    public String getLvhEmail() {
        return lvhEmail;
    }

    public void setLvhEmail(String lvhEmail) {
        this.lvhEmail = lvhEmail;
    }

    public String getLvhSoDienThoai() {
        return lvhSoDienThoai;
    }

    public void setLvhSoDienThoai(String lvhSoDienThoai) {
        this.lvhSoDienThoai = lvhSoDienThoai;
    }

    @Override
    public String toString() {
        return "QuanTri{" +
                "lvhMaQuanTri=" + lvhMaQuanTri +
                ", lvhHoTen='" + lvhHoTen + '\'' +
                ", lvhTenDangNhap='" + lvhTenDangNhap + '\'' +
                ", lvhMatKhau='" + lvhMatKhau + '\'' +
                ", lvhEmail='" + lvhEmail + '\'' +
                ", lvhSoDienThoai='" + lvhSoDienThoai + '\'' +
                '}';
    }
}
