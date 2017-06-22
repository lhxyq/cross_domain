package com.lh.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by LH 2446059046@qq.com on 2017/6/22.
 */
public class JsonpServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String callBack = req.getParameter("callback");
        String name = "lhxyq";
        String data = "{" + "name: '" + name + "'}";

        String jsonp = callBack + "(" + data + ")";

        PrintWriter out = resp.getWriter();
        out.print(jsonp);
    }
}
