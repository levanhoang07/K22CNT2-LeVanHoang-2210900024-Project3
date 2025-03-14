package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_GiasuDAO;
import com.lvhspringmvc.model.LVH_Giasu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class LVH_GiasuController {

    private final LVH_GiasuDAO giasuDAO;

    @Autowired
    public LVH_GiasuController(LVH_GiasuDAO giasuDAO) {
        this.giasuDAO = giasuDAO;
    }

    // Hiển thị danh sách gia sư
    @GetMapping("/giasu/lvh_giasu_list")
    public String showGiasuList(Model model) {
        List<LVH_Giasu> list = giasuDAO.getAllGiasu();
        model.addAttribute("list", list);
        return "giasu/lvh_giasu_list"; // Trả về trang danh sách gia sư
    }

    // Hiển thị form thêm gia sư
    @GetMapping("/giasu/add")
    public String showAddForm(Model model) {
        model.addAttribute("giasu", new LVH_Giasu());
        return "giasu/lvh_giasu_add"; // Trả về form thêm gia sư
    }

    // Lưu thông tin gia sư mới
    @PostMapping("/giasu/save")
    public String saveGiasu(@ModelAttribute("giasu") LVH_Giasu giasu, Model model) {
        if (giasu.getLvhHoTen() == null || giasu.getLvhHoTen().isEmpty()) {
            model.addAttribute("error", "Tên gia sư không thể để trống.");
            return "giasu/lvh_giasu_add"; // Trả về form thêm gia sư nếu tên không hợp lệ
        }
        // Lưu gia sư vào cơ sở dữ liệu
        giasuDAO.insertGiasu(giasu);
        return "redirect:/giasu/lvh_giasu_list"; // Sau khi thêm thành công, quay lại danh sách gia sư
    }

    // Hiển thị form chỉnh sửa gia sư
    @GetMapping("/giasu/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Giasu giasu = giasuDAO.getGiasuById(id);
        if (giasu == null) {
            model.addAttribute("error", "Không tìm thấy gia sư với ID: " + id);
            return "redirect:/giasu/lvh_giasu_list"; // Nếu không tìm thấy, quay lại danh sách
        }
        model.addAttribute("giasu", giasu);
        return "giasu/lvh_giasu_edit"; // Trả về form chỉnh sửa gia sư
    }

    // Cập nhật thông tin gia sư
    @PostMapping("/giasu/update")
    public String updateGiasu(@ModelAttribute("giasu") LVH_Giasu giasu, Model model) {
        if (giasu.getLvhMaGiaSu() == null) {
            model.addAttribute("error", "ID gia sư không hợp lệ.");
            return "redirect:/giasu/lvh_giasu_list";
        }
        giasuDAO.updateGiasu(giasu);
        return "redirect:/giasu/lvh_giasu_list"; // Quay lại danh sách gia sư
    }

    // Xóa gia sư
    @GetMapping("/giasu/delete/{id}")
    public String deleteGiasu(@PathVariable("id") int id) {
        giasuDAO.deleteGiasu(id);
        return "redirect:/giasu/lvh_giasu_list"; // Sau khi xóa, quay lại danh sách
    }
}
