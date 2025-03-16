package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_ThanhtoanDAO;
import com.lvhspringmvc.model.LVH_Thanhtoan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/thanhtoan")
public class LVH_ThanhtoanController {

    @Autowired
    private LVH_ThanhtoanDAO thanhtoanDAO;

    // 📝 Hiển thị danh sách thanh toán
    @GetMapping("/lvh_thanhtoan_list")
    public String showThanhtoanList(Model model) {
        List<LVH_Thanhtoan> list = thanhtoanDAO.getAllThanhtoan();
        model.addAttribute("list", list);
        return "thanhtoan/lvh_thanhtoan_list";
    }

    // ➕ Hiển thị form thêm mới thanh toán
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("thanhtoan", new LVH_Thanhtoan());
        return "thanhtoan/lvh_thanhtoan_add";
    }

    // ✅ Xử lý thêm mới thanh toán
    @PostMapping("/save")
    public String saveThanhtoan(@ModelAttribute("thanhtoan") LVH_Thanhtoan thanhtoan, Model model) {
        if (thanhtoan.getLvhMaHocVien() == null || thanhtoan.getLvhMaGiaSu() == null || 
            thanhtoan.getLvhSoTien() == null || thanhtoan.getLvhLoaiThanhtoan() == null) {
            model.addAttribute("message", "Vui lòng điền đầy đủ thông tin!");
            return "thanhtoan/lvh_thanhtoan_add";
        }

        try {
            thanhtoanDAO.insertThanhtoan(thanhtoan);
        } catch (Exception e) {
            model.addAttribute("message", "Lỗi khi thêm mới thanh toán: " + e.getMessage());
            return "thanhtoan/lvh_thanhtoan_add";
        }

        return "redirect:/thanhtoan/lvh_thanhtoan_list";
    }

    // ✏️ Hiển thị form chỉnh sửa thanh toán
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Integer id, Model model) {
        if (id == null || id <= 0) {
            return "redirect:/thanhtoan/lvh_thanhtoan_list";
        }

        LVH_Thanhtoan thanhtoan = thanhtoanDAO.getThanhtoanById(id);
        if (thanhtoan == null) {
            model.addAttribute("message", "Không tìm thấy thanh toán với ID: " + id);
            return "redirect:/thanhtoan/lvh_thanhtoan_list";
        }

        model.addAttribute("thanhtoan", thanhtoan);
        return "thanhtoan/lvh_thanhtoan_edit";
    }

    // 🔄 Xử lý cập nhật thanh toán
    @PostMapping("/update")
    public String updateThanhtoan(@ModelAttribute("thanhtoan") LVH_Thanhtoan thanhtoan, Model model) {
        if (thanhtoan.getLvhMaThanhtoan() == null || thanhtoan.getLvhMaThanhtoan() <= 0) {
            return "redirect:/thanhtoan/lvh_thanhtoan_list";
        }

        try {
            thanhtoanDAO.updateThanhtoan(thanhtoan);
        } catch (Exception e) {
            model.addAttribute("message", "Lỗi khi cập nhật thanh toán: " + e.getMessage());
            return "thanhtoan/lvh_thanhtoan_edit";
        }

        return "redirect:/thanhtoan/lvh_thanhtoan_list";
    }

    // ❌ Xóa thanh toán
    @GetMapping("/delete/{id}")
    public String deleteThanhtoan(@PathVariable("id") Integer id) {
        if (id == null || id <= 0) {
            return "redirect:/thanhtoan/lvh_thanhtoan_list";
        }

        try {
            thanhtoanDAO.deleteThanhtoan(id);
        } catch (Exception e) {
            return "redirect:/thanhtoan/lvh_thanhtoan_list";
        }

        return "redirect:/thanhtoan/lvh_thanhtoan_list";
    }
}
