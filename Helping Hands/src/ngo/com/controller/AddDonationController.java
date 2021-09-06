package ngo.com.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ngo.com.bo.Donation;
import ngo.com.dao.DonationDao;
import ngo.com.factory.dao.DaoFactory;

/**
 * Servlet implementation class AddDonationController
 */
public class AddDonationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDonationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get the required parameters
		String category = request.getParameter("item");
		String dobStr = request.getParameter("dob");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String phoneStr = request.getParameter("phone");
		String address = request.getParameter("address");
		String itemDetails = request.getParameter("itemDetails");
		
		//parse required items
		//String to util date
		Date dob = null;
		try {
			dob = new SimpleDateFormat("dd-mm-yyyy").parse(dobStr);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long phone = Long.parseLong(phoneStr);
		Donation newDonation = new Donation(category, dob, firstName, lastName, email, phone, address,itemDetails);
		DonationDao donationDao = DaoFactory.getDonationDao();
		boolean isAdded = donationDao.addDonation(newDonation);
		/*response.sendRedirect("index.jsp?AddMessage="+isAdded);*/
		if(isAdded == true){
			request.setAttribute("donation", newDonation);
			System.out.println("success..");
			request.getRequestDispatcher("Pdf").forward(request, response);
			
		}else{
			request.setAttribute("message", "Unable to process your request..");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
