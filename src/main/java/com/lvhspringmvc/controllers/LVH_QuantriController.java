package com.lvhspringmvc.controllers;

import com.lvhspringmvc.dao.LVH_QuantriDAO;
import com.lvhspringmvc.model.LVH_Quantri;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LVH_QuantriController {

    @Autowired
    private LVH_QuantriDAO quantriDAO;

    // Hiển thị danh sách quản trị viên
    @RequestMapping("/quanli/lvh_quantri_list")
    public String showQuanTriList(Model model) {
        List<LVH_Quantri> list = quantriDAO.getAllQuanTri();
        model.addAttribute("list", list);
        return "quanli/lvh_quantri_list"; // Trả về danh sách quản trị viên
    }

    // Hiển thị form thêm mới quản trị viên
    @GetMapping("/quanli/add")
    public String showAddForm(Model model) {
        model.addAttribute("quanTri", new LVH_Quantri());
        return "quanli/lvh_quantri_add"; // Trả về form để thêm mới quản trị viên
    }

    // Xử lý lưu thông tin quản trị viên (thêm mới)
    @PostMapping("/quanli/save")
    public String saveQuanTri(@ModelAttribute("quanTri") LVH_Quantri quanTri, Model model) {
        try {
            if (quanTri != null) {
                quantriDAO.insertQuanTri(quanTri);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "quanli/lvh_quantri_add"; // Quay lại form nếu có lỗi
        }
        return "redirect:/quanli/lvh_quantri_list"; // Sau khi thêm thành công, chuyển đến danh sách
    }

    // Hiển thị form để sửa thông tin quản trị viên
    @GetMapping("/quanli/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        LVH_Quantri quanTri = quantriDAO.getQuanTriById(id);
        if (quanTri == null) {
            model.addAttribute("message", "Không tìm thấy quản trị viên với ID: " + id);
            return "redirect:/quanli/lvh_quantri_list"; // Nếu không tìm thấy quản trị viên thì quay lại danh sách
        }
        model.addAttribute("quanTri", quanTri);
        return "quanli/lvh_quantri_edit"; // Trả về form để sửa thông tin
    }

    // Xử lý cập nhật thông tin quản trị viên
    @PostMapping("/quanli/update")
    public String updateQuanTri(@ModelAttribute("quanTri") LVH_Quantri quanTri, Model model) {
        try {
            if (quanTri != null && quanTri.getLvhMaQuanTri() > 0) {
                quantriDAO.updateQuanTri(quanTri);
            }
        } catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "quanli/lvh_quantri_edit"; // Quay lại form nếu có lỗi
        }
        return "redirect:/quanli/lvh_quantri_list"; // Sau khi cập nhật thành công, chuyển đến danh sách
    }

    // Xử lý xóa quản trị viên
    @GetMapping("/quanli/delete/{id}")
    public String deleteQuanTri(@PathVariable("id") int id) {
        LVH_Quantri quanTri = quantriDAO.getQuanTriById(id);
        if (quanTri != null) {
            quantriDAO.deleteQuanTri(id);
        }
        return "redirect:/quanli/lvh_quantri_list"; // Sau khi xóa thành công, quay lại danh sách
    }

    // Ánh xạ cho trang quản lý
    @RequestMapping("/qladmin")
    public String showAdminPage() {
        return "qladmin"; // Trả về view qladmin.jsp
    }
}
