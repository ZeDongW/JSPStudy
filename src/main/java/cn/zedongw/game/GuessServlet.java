package cn.zedongw.game;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

/**
 * @Author ZeDongW
 * @ClassName GuessServlet
 * @Description 猜大小游戏
 * @Version 1.0
 * @date ：Created in 2019/5/21 0021 6:07
 * @modified By：
 */

public class GuessServlet extends HttpServlet {
    int answer;  //答案

    /**
     * @Author: ZeDongW
     * @Description: 产生0~30内的随机数
     * @Date: 2019/5/21 0021 6:16
     * @Param: []
     * @return: void
     */
    public void newGame(){
        Random random = new Random();
        answer = random.nextInt(30);
    }

    public GuessServlet() {
        newGame();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8"); //设置徐昂影歌是

        String luckyNostr = req.getParameter("luckyNo");  //获取提交参数

        Integer luckyNo = null; //幸运数字

        if (luckyNostr != null && !luckyNostr.equals("")){ //将提交的参数转化为整数
            luckyNo = Integer.parseInt(luckyNostr);
        }

        //记录用户游戏次数
        Integer times = 1;

        String timesStr = req.getParameter("times"); //获取用户游戏次数

        //将用户游戏次数转化为整数
        if(timesStr != null && !timesStr.equals("")){
            times = Integer.parseInt(timesStr) + 1;
        }

        if (times <= 5) {
            String msg = "";  //返回消息

            int compare = Integer.compare(luckyNo, answer); //比较结果

            if(compare > 0){
                msg = "可惜了， 猜大了";
            } else if(compare < 0) {
                msg = "可惜了，猜小了";
            } else if (compare == 0){
                msg = "恭喜你，你赢了";
            }

            req.setAttribute("times", times); //将游戏次数返回

            req.setAttribute("msg", msg); //返回游戏结果

        } else { //查货游戏次数，重新开始游戏
            newGame();
            resp.getWriter().write("游戏结束 <a href='" + req.getContextPath() + "/guess.jsp'>重新开始</a>");
            return;
        }

        //转发
        req.getRequestDispatcher("/guess.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
