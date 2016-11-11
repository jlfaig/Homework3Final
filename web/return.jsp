<%--
Copyright: 2016 Jenny Faig & Tyler LaVecchia & William Breen
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix= "elon" uri="WEB-INF/tlds/currencyFormat.tld" %>
<c:import url="/includes/header.html" />

<form method="post">
  <h1>Future Value Calculator</h1>
  <label class="returnAmount">Investment Amount:</label>
  <span class="returnAmountNum">
    <elon:currencyFormat field="${calculation.principal}"/>
  </span><br>
  <label class="returnRate">Yearly Interest Rate:</label>
  <span class="returnRateNum">
    ${calculation.rate}
  </span><br>
  <label class="returnYears">Number of Years:</label>
  <span class="returnYearsNum">
    ${calculation.years}
  </span><br>
  <table>
    <tr>
      <th class="YearLabel">Year</th>
      <th class="ValueLabel">Value</th>
    </tr>
    <c:forEach items="${calculation.futureValue}" var="value" varStatus="status">
      <tr>
        <td class="yearNum">${status.count}</td>
        <td class="secondPoint"><elon:currencyFormat field="${value}"/></td>
      </tr>
    </c:forEach>
  </table>
  <a href="form.jsp">Return to Calculator</a>
  <p></p>
</form>

<c:import url="/includes/footer.html" />