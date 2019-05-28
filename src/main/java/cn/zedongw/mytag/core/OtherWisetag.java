package cn.zedongw.mytag.core;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * @Author ZeDongW
 * @ClassName OtherWisetag
 * @Description 自定义标签-模仿核心标签库OtherWise
 * @Version 1.0
 * @date ：Created in 2019/5/28 0028 7:13
 * @modified By：
 */

public class OtherWisetag extends SimpleTagSupport {
    @Override
    public void doTag() throws JspException, IOException {
        if(!((ChooseTag)this.getParent()).isFalg()){
            this.getJspBody().invoke(null);
        }
    }
}
