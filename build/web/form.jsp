<%--
Copyright: 2016 Jenny Faig & Tyler LaVecchia & William Breen
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<form action="calculate" method="post">
  <h1>Future Value Calculator</h1>
  <input type="hidden" name="action" value="add">
  <p>
    <label class="amount">Investment Amount </label> 
    <c:choose>
      <c:when test="${calculation.principal != null}">
        <input name="principal" type="number" min="0" value ="${calculation.principal}" autofocus/> 
      </c:when>
      <c:otherwise>
        <input name="principal" type="number" min="0" autofocus required/>
      </c:otherwise>
    </c:choose>
  </p>
  <p>
    <label>Yearly Interest Rate </label>
    <c:choose>
      <c:when test="${calculation.rate != null}">
        <input name="rate" type="number" min="0" value ="${calculation.rate}"/> 
      </c:when>
      <c:otherwise>
        <input name="rate" type="number" min="0" required/>
      </c:otherwise>
    </c:choose>
  </p>
  <p>
    <label class="numYears">Number of Years </label>
    <input name="years" type="number" min="0" 
           required placeholder="Integer number of years"/>
  </p>
  <p class="SubmitButton">
    <input class="button" type="submit" value="Calculate"/>
  </p>
</form>

<c:import url="/includes/footer.html" />
