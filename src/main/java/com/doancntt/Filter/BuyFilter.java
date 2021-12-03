package com.doancntt.Filter;

import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "BuyFilter",value = "/Detail,/AddtoCart")
public class BuyFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpSession session = request.getSession();
        boolean Verified = (boolean) session.getAttribute("Verified");
        if (!Verified) {
            session.setAttribute("retUrl", request.getRequestURI()+"?"+request.getQueryString());
        }

        chain.doFilter(req, res);
    }
}
