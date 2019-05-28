package cn.zedongw.mytag.core;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * @Author ZeDongW
 * @ClassName ChooseTag
 * @Description 自定义标签-模仿核心标签库Choose
 * @Version 1.0
 * @date ：Created in 2019/5/28 0028 7:09
 * @modified By：
 */

public class ChooseTag extends SimpleTagSupport {
    private boolean falg = false;

    public boolean isFalg() {
        return falg;
    }

    public void setFalg(boolean falg) {
        this.falg = falg;
    }

    @Override
    public void doTag() throws JspException, IOException {
        this.getJspBody().invoke(null);
    }
}
