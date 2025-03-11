package com.lvhspringmvc.model;

import java.util.Date;

public class LVH_Giasu {
    private Integer lvhMaGiaSu; // ID of the tutor
    private String lvhHoTen; // Full name of the tutor
    private Date lvhNgaySinh; // Date of birth
    private String lvhGioiTinh; // Gender
    private String lvhSoDienThoai; // Phone number
    private String lvhEmail; // Email
    private String lvhDiaChi; // Address
    private String lvhTrinhDo; // Qualification
    private String lvhAnh; // Picture
    private Double lvhMucLuong; // Salary
    private String lvhMatKhau; // Password
    private Boolean lvhTrangThai; // Status (active or not)

    // Getters and Setters
    public Integer getLvhMaGiaSu() {
        return lvhMaGiaSu;
    }

    public void setLvhMaGiaSu(Integer lvhMaGiaSu) {
        this.lvhMaGiaSu = lvhMaGiaSu;
    }

    public String getLvhHoTen() {
        return lvhHoTen;
    }

    public void setLvhHoTen(String lvhHoTen) {
        this.lvhHoTen = lvhHoTen;
    }

    public Date getLvhNgaySinh() {
        return lvhNgaySinh;
    }

    public void setLvhNgaySinh(Date lvhNgaySinh) {
        this.lvhNgaySinh = lvhNgaySinh;
    }

    public String getLvhGioiTinh() {
        return lvhGioiTinh;
    }

    public void setLvhGioiTinh(String lvhGioiTinh) {
        this.lvhGioiTinh = lvhGioiTinh;
    }

    public String getLvhSoDienThoai() {
        return lvhSoDienThoai;
    }

    public void setLvhSoDienThoai(String lvhSoDienThoai) {
        this.lvhSoDienThoai = lvhSoDienThoai;
    }

    public String getLvhEmail() {
        return lvhEmail;
    }

    public void setLvhEmail(String lvhEmail) {
        this.lvhEmail = lvhEmail;
    }

    public String getLvhDiaChi() {
        return lvhDiaChi;
    }

    public void setLvhDiaChi(String lvhDiaChi) {
        this.lvhDiaChi = lvhDiaChi;
    }

    public String getLvhTrinhDo() {
        return lvhTrinhDo;
    }

    public void setLvhTrinhDo(String lvhTrinhDo) {
        this.lvhTrinhDo = lvhTrinhDo;
    }

    public String getLvhAnh() {
        return lvhAnh;
    }

    public void setLvhAnh(String lvhAnh) {
        this.lvhAnh = lvhAnh;
    }

    public Double getLvhMucLuong() {
        return lvhMucLuong;
    }

    public void setLvhMucLuong(Double lvhMucLuong) {
        this.lvhMucLuong = lvhMucLuong;
    }

    public String getLvhMatKhau() {
        return lvhMatKhau;
    }

    public void setLvhMatKhau(String lvhMatKhau) {
        this.lvhMatKhau = lvhMatKhau;
    }

    public Boolean getLvhTrangThai() {
        return lvhTrangThai;
    }

    public void setLvhTrangThai(Boolean lvhTrangThai) {
        this.lvhTrangThai = lvhTrangThai;
    }
}
