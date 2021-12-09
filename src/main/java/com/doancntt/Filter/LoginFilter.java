package com.doancntt.Filter;

import com.doancntt.beans.Customer;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "LoginFilter", value = "/*")
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpSession session = request.getSession();
        if (session.getAttribute("Verified") == null) {
            session.setAttribute("Verified", false);
            session.setAttribute("Customer_logged_in", new Customer());
            session.setAttribute("shdm", 0);
        }

        chain.doFilter(request, response);
    }
}
