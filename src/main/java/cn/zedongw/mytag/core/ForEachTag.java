package cn.zedongw.mytag.core;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * @Author ZeDongW
 * @ClassName ForEachTag
 * @Description 自定义标签-模仿核心标签库forEach
 * @Version 1.0
 * @date ：Created in 2019/5/28 0028 6:57
 * @modified By：
 */

public class ForEachTag extends SimpleTagSupport {
    private Object items;
    private int begin = 0;
    private int end = 0;
    private int step = 0;
    private String var;

    public void setItems(Object items) {
        this.items = items;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public void setStep(int step) {
        this.step = step;
    }

    public void setVar(String var) {
        this.var = var;
    }

    @Override
    public void doTag() throws JspException, IOException {

        Collection colls = null;

        if (items instanceof List){
            colls = (List)items;
        }

        if (items instanceof Map){
            colls = ((Map)items).entrySet();
        }

        if (end == 0){
            setEnd(colls.size());
        }

        if (step == 0){
            setStep(1);
        }
        Object[] o = colls.toArray();
        for (int i = begin; i < end; i+=step){
            ((PageContext)this.getJspContext()).getRequest().setAttribute(var,o[i]);
            this.getJspBody().invoke(null);
        }
        /*for (Object o : colls){
            ((PageContext)this.getJspContext()).getRequest().setAttribute(var,o);
            this.getJspBody().invoke(null);
        }*/
    }
}
