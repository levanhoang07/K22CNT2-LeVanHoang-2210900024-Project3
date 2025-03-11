package com.lvhspringmvc.model;

import java.util.Date;

public class LVH_Thanhtoan {

    private Integer LvhMaThanhtoan;
    private Integer LvhMaHocVien;
    private Integer LvhMaGiaSu;
    private Double LvhSoTien;
    private Date LvhNgayThanhtoan;
    private String LvhLoaiThanhtoan;

    // Getters and Setters

    public Integer getLvhMaThanhtoan() {
        return LvhMaThanhtoan;
    }

    public void setLvhMaThanhtoan(Integer lvhMaThanhtoan) {
        LvhMaThanhtoan = lvhMaThanhtoan;
    }

    public Integer getLvhMaHocVien() {
        return LvhMaHocVien;
    }

    public void setLvhMaHocVien(Integer lvhMaHocVien) {
        LvhMaHocVien = lvhMaHocVien;
    }

    public Integer getLvhMaGiaSu() {
        return LvhMaGiaSu;
    }

    public void setLvhMaGiaSu(Integer lvhMaGiaSu) {
        LvhMaGiaSu = lvhMaGiaSu;
    }

    public Double getLvhSoTien() {
        return LvhSoTien;
    }

    public void setLvhSoTien(Double lvhSoTien) {
        LvhSoTien = lvhSoTien;
    }

    public Date getLvhNgayThanhtoan() {
        return LvhNgayThanhtoan;
    }

    public void setLvhNgayThanhtoan(Date lvhNgayThanhtoan) {
        LvhNgayThanhtoan = lvhNgayThanhtoan;
    }

    public String getLvhLoaiThanhtoan() {
        return LvhLoaiThanhtoan;
    }

    public void setLvhLoaiThanhtoan(String lvhLoaiThanhtoan) {
        LvhLoaiThanhtoan = lvhLoaiThanhtoan;
    }
}
