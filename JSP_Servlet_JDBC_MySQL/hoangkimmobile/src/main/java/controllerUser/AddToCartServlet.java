package controllerUser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;
import model.Product;
import service.IProductService;
import service.impl.ProductService;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IProductService service;
	
	@Override
	public void init() throws ServletException {
		super.init();
		this.service = new ProductService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.getRequestDispatcher("/WEB-INF/web/cart.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		HttpSession session = request.getSession(true);
		
		if (action != null && action.equals("add")) {
			Product p = this.service.getProducts(Integer.parseInt(id));
			Cart c = (Cart) session.getAttribute("cart");
			c.add(new Product(p.getId(), p.getName(), p.getDescription(), p.getPrice(), 
					p.getSrc(), p.getType(), p.getBrand(), 1));
			session.setAttribute("cart", c);
			request.getRequestDispatcher("/WEB-INF/web/cart.jsp").forward(request, response);


		} else if (action != null && action.equals("updateQuantity")) {
			int pQuantity = Integer.parseInt(request.getParameter("pQuantity"));
			Product p = this.service.getProducts(Integer.parseInt(id));
			Cart c = (Cart) session.getAttribute("cart");			
			if (pQuantity > 0) {
				c.add(new Product(p.getId(), p.getName(), p.getDescription(), p.getPrice(), 
						p.getSrc(), p.getType(), p.getBrand(), p.getNumber()), pQuantity);
			} else if(pQuantity == 0) {
				c.remove(Integer.parseInt(id));
			}
			session.setAttribute("cart", c);
			request.getRequestDispatcher("/WEB-INF/web/cart.jsp").forward(request, response);
			
			
		} else if (action != null && action.equals("delete")) {
			Cart c = (Cart) session.getAttribute("cart");
			c.remove(Integer.parseInt(id));
			session.setAttribute("cart", c);
			request.getRequestDispatcher("/WEB-INF/web/cart.jsp").forward(request, response);
		}
	}
}