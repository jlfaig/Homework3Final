/*
Copyright 2016: Jenny Faig & William Breen
 */
package edu.elon.tags;
import java.io.IOException;
import java.text.NumberFormat;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author jfaig
 */
public class currencyFormatTag extends TagSupport{
  
  private String field;
  
  public void setField(Double field){
    NumberFormat currency = NumberFormat.getCurrencyInstance();
    String fieldFormatted = currency.format(field);
    System.out.println(fieldFormatted);
    this.field = fieldFormatted;
    
  }
  
  @Override
  public int doStartTag() throws JspException {
    try {
      JspWriter out = pageContext.getOut();
      out.print(field);
    }
    catch (IOException ioe) {
      System.out.println(ioe);
    }
    return SKIP_BODY;
  }
}
