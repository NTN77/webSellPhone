package controllerUser;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Account;
import model.Cart;
import model.Orders;
import model.Product;
import service.IDiscountService;
import service.IOrdersService;
import service.impl.DiscountService;
import service.impl.OrdersService;

@WebServlet("/PayServlet")
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IDiscountService discountService;
	private IOrdersService orderService;
	
	@Override
	public void init() throws ServletException {
		super.init();
		this.discountService = new DiscountService();
		this.orderService = new OrdersService();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html, charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(true);
		String action = request.getParameter("action");
		Account account = (Account) session.getAttribute("account");
		if(account != null) {
			request.setAttribute("email", account.getEmail());
			request.setAttribute("name", account.getName());
			request.setAttribute("address", account.getAddress());
			request.setAttribute("phone", account.getPhone());
		} else {
			request.setAttribute("email", "");
			request.setAttribute("name", "");
			request.setAttribute("address", "");
			request.setAttribute("phone", "");
		}
		if(action != null && action.equals("checkout")) {
			request.getRequestDispatcher("/WEB-INF/web/checkout.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html, charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(true);
		Cart c = (Cart) session.getAttribute("cart");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String discount = request.getParameter("discount");
		double discountPrice;
		if(this.discountService.exists(discount)
				&& !this.discountService.used(discount, email)) {
			discountPrice = this.discountService.getDiscountPrice(discount);
			System.out.println("hello");
		} else {
			Account account = (Account) session.getAttribute("account");
			if(account != null) {
				request.setAttribute("email", account.getEmail());
				request.setAttribute("name", account.getName());
				request.setAttribute("address", account.getAddress());
				request.setAttribute("phone", account.getPhone());
			} else {
				request.setAttribute("email", "");
				request.setAttribute("name", "");
				request.setAttribute("address", "");
				request.setAttribute("phone", "");
			}
			request.setAttribute("error", "Can't use this discount coupon!");
			request.getRequestDispatcher("/WEB-INF/web/checkout.jsp").forward(request, response);
			return;
		}
		List<Product> products = c.getItems();
		this.orderService.insertOrder(new Orders(email, name, address, phone, products, 2, discount, null));
		double total = c.getTotalAmount();	
		double grandTotal = total - discountPrice;
		session.setAttribute("total", total);
		session.setAttribute("discountPrice", discountPrice);
		session.setAttribute("grandTotal", grandTotal);
		if (discount != null) {
			this.discountService.updateDiscountNumber(discount);
		}
		session.removeAttribute("cart");
		request.getRequestDispatcher("/WEB-INF/web/success.jsp").forward(request, response);
	}
}