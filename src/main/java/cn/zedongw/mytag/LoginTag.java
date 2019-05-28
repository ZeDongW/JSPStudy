package cn.zedongw.mytag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * @Author ZeDongW
 * @ClassName LoginTag
 * @Description 自定义标签-登录标签
 * @Version 1.0
 * @date ：Created in 2019/5/28 0028 6:25
 * @modified By：
 */

public class LoginTag extends SimpleTagSupport {
    private String userName;
    private String passWord;

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    @Override
    public void doTag() throws JspException, IOException {
        ((PageContext)this.getJspContext()).getResponse().setContentType("text/html;charset=utf-8");
        String html = "";
        html += "    <center><h3>用户登录页面</h3></center>";
        html += "    <form action=' " + ((HttpServletRequest)((PageContext) this.getJspContext()).getRequest()).getContextPath() + "/tag/ipTag.jsp' method='post'>";
        html += "        <table border='1' align='center' width='400' style='border-collapse: collapse' >";
        html += "            <tr>";
        html += "                <th>用户名：</th>";
        html += "                <td><input type='text' name=" + userName +"></td>";
        html += "            </tr>";
        html += "            <tr>";
        html += "                <th>密码：</th>";
        html += "                <td><input type='password' name='" + passWord + "'></td>";
        html += "            </tr>";
        html += "            <tr>";
        html += "                <td colspan='2' align='center'><input type='submit' value='登录'>&nbsp;<input type='reset' value='重置'></td>";
        html += "            </tr>";
        html += "        </table>";
        html += "    </form>";
        this.getJspContext().getOut().write(html);
    }
}
