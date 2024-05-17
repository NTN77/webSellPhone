package controllerAdmin;

import dao.IProductDAO;
import dao.impl.ProductDAO;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
@WebServlet("/updateProduct")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 10, fileSizeThreshold = 1024 * 1024 * 10)
public class updateProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(req.getParameter("id"));
        IProductDAO productDAO = new ProductDAO();
        Product product = productDAO.findProductbyId(id);
        String name = req.getParameter("name");
        System.out.println(name);
        String description = req.getParameter("description");
        System.out.println(description);
        double price = Double.parseDouble(req.getParameter("price"));
        System.out.println(price);
        Part photo = req.getPart("src");
        String src = UploadFileHelper.uploadFile("admin/picture",req,photo);
        System.out.println(src);
        String type = req.getParameter("type");
        System.out.println(type);
        String brand = req.getParameter("brand");
        System.out.println(brand);

        product.setName(new String (name.getBytes("ISO-8859-1"),"UTF-8"));
        product.setDescription(new String (name.getBytes("ISO-8859-1"),"UTF-8"));
        product.setPrice(price);
        product.setSrc(src);
        product.setType(new String (name.getBytes("ISO-8859-1"),"UTF-8"));
        product.setBrand(new String (name.getBytes("ISO-8859-1"),"UTF-8"));

        if(productDAO.update(product)){
            req.getSession().setAttribute("message","thanh cong");
            resp.sendRedirect("AdminHomePage");
            System.out.println("Update thanh cong");
        }
        else {
            HttpSession session = req.getSession();
            session.setAttribute("responUri", "addNewBrand");
            resp.sendRedirect("messageError");
            System.out.println("Update thất bại");
        }
    }
}
