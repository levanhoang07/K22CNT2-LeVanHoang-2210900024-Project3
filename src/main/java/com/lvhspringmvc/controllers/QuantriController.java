package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.QuantriDAO;
import com.lvhspringmvc.model.QuanTri;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/quantri")
public class QuantriController {

    @Autowired
    private QuantriDAO quantriDAO; // Đổi tên QuanTriDAO thành QuantriDAO

    // Hiển thị danh sách quản trị viên
    @GetMapping("/list")
    public String listQuanTri(Model model) {
        List<QuanTri> list = quantriDAO.getAllQuanTri();
        model.addAttribute("danhSachQuanTri", list);
        return "LvhQuantri/quantri_list";
    }

    // Hiển thị form thêm quản trị viên
    @GetMapping("/saveform")
    public String showForm(Model model) {
        model.addAttribute("command", new QuanTri());
        return "LvhQuantri/quantri_form";
    }

    // Lưu thông tin quản trị viên
    @PostMapping("/save")
    public String save(@ModelAttribute("command") QuanTri quanTri) {
        quantriDAO.save(quanTri);
        return "redirect:/quantri/list";
    }

    // Hiển thị form sửa thông tin quản trị viên
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        QuanTri quanTri = quantriDAO.getQuanTriById(id);
        model.addAttribute("command", quanTri);
        return "LvhQuantri/quantri_edit";
    }

    // Lưu thông tin sau khi chỉnh sửa
    @PostMapping("/editsave")
    public String editSave(@ModelAttribute("command") QuanTri quanTri) {
        quantriDAO.update(quanTri);
        return "redirect:/quantri/list";
    }

    // Xóa quản trị viên
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") int id) {
        quantriDAO.delete(id);
        return "redirect:/quantri/list";
    }
}
