package cn.zedongw.mytag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * @Author ZeDongW
 * @ClassName ShowIPTag
 * @Description 自定义标签，显示IP
 * @Version 1.0
 * @date ：Created in 2019/5/27 0027 22:02
 * @modified By：
 */

public class ShowIPTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        PageContext pageContext = (PageContext) this.getJspContext();
        HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();

        String remoteHost = request.getRemoteHost();

        JspWriter out = pageContext.getOut();

        out.write("是用自定义标签，当前IP为：" + remoteHost);
    }
}
