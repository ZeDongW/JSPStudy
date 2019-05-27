package cn.zedongw.mytag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * @Author ZeDongW
 * @ClassName DemoTag
 * @Description 自定义标签
 * @Version 1.0
 * @date ：Created in 2019/5/27 0027 23:13
 * @modified By：
 */

public class DemoTag extends SimpleTagSupport {

    private Integer times;

    public Integer getTimes() {
        return times;
    }

    public void setTimes(Integer times) {
        this.times = times;
    }



    @Override
    public void doTag() throws JspException, IOException {
        System.out.println("执行了自定义标签");

        JspFragment jspBody = this.getJspBody();

        /**
         * 控制标签体内容是否输出
         */
//        jspBody.invoke(this.getJspContext().getOut());
//        jspBody.invoke(null );

        /**
         * 控制标签余下内容是否输出
         * 输出： 什么都不敢
         * 补输出： 抛出SkipPageException()异常
         */
//        throw new SkipPageException();

        /**
         * 多次输出标签体内容
         */
        for (int i = 0; i < times; i++) {
            jspBody.invoke(null);
        }

        /**
         * 改变标签体内容
         */
        //创建临时容器
       /* StringWriter stringWriter = new StringWriter();
        //把标签体内容拷贝到临时容器
        jspBody.invoke(stringWriter);
        //从林是容器得到标签体内容
        String s = stringWriter.toString();
        //改变标签体内容
        s = s.toLowerCase();
        //把改变内容输出到浏览器
        this.getJspContext().getOut().write(s);*/
    }
}
