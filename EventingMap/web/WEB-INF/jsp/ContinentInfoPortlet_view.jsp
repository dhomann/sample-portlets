<%--
  The contents of this file are subject to the terms
  of the Common Development and Distribution License
  (the License).  You may not use this file except in
  compliance with the License.
 
  You can obtain a copy of the license at
  http://www.sun.com/cddl/cddl.html or
  at portlet-repository/CDDLv1.0.txt.
  See the License for the specific language governing
  permissions and limitations under the License.
 
  When distributing Covered Code, include this CDDL
  Header Notice in each file and include the License file
  at portlet-repository/CDDLv1.0.txt.
  If applicable, add the following below the CDDL Header,
  with the fields enclosed by brackets [] replaced by
  you own identifying information:
  "Portions Copyrighted [year] [name of copyright owner]"
 
  Copyright 2007 Sun Microsystems, Inc. All rights reserved.
 --%>
<%@page import="javax.portlet.*,java.util.*"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<portlet:defineObjects />
<fmt:setBundle basename="ContinentInfoPortlet" />
<%
String continentDescription = request.getParameter("continentDescription");
if ((continentDescription == null) || (continentDescription.length()==0)){%>
<p><b><fmt:message key="clickMap"/></b></p>
<%} else {%>
<%=continentDescription%>
<% } %>
