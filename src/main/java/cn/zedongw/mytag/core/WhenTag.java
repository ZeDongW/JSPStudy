package cn.zedongw.mytag.core;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * @Author ZeDongW
 * @ClassName WhenTag
 * @Description 自定义标签-模仿核心标签库When
 * @Version 1.0
 * @date ：Created in 2019/5/28 0028 7:11
 * @modified By：
 */

public class WhenTag extends SimpleTagSupport {
    private Boolean test;

    public Boolean getTest() {
        return test;
    }

    public void setTest(Boolean test) {
        this.test = test;
    }

    @Override
    public void doTag() throws JspException, IOException {
        if(test){
            this.getJspBody().invoke(null);
            ((ChooseTag)this.getParent()).setFalg(true);
        }
    }
}
