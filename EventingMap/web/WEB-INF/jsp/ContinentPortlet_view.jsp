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

<%@ page import="javax.portlet.PortletURL,java.util.*" %>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<MAP NAME=MyMap>
    <AREA SHAPE=rect HREF="<portlet:actionURL><portlet:param name='continent' value='NorthAmerica'/></portlet:actionURL>" COORDS=0,0,45,35>
    <AREA SHAPE=rect HREF="<portlet:actionURL><portlet:param name='continent' value='SouthAmerica'/></portlet:actionURL>" COORDS=10,20,40,90>
    <AREA SHAPE=rect HREF="<portlet:actionURL><portlet:param name='continent' value='Africa'/></portlet:actionURL>" COORDS=50,45,85,90>
    <AREA SHAPE=rect HREF="<portlet:actionURL><portlet:param name='continent' value='Asia'/></portlet:actionURL>" COORDS=45,0,140,45>
<AREA SHAPE=rect HREF="<portlet:actionURL><portlet:param name='continent' value='Australia'/></portlet:actionURL>" COORDS=110,50,140,197></MAP>
<portlet:resourceURL var="worldMapUrl" id="World.jpg" escapeXml="false" />
<IMG USEMAP=#MyMap SRC="<%=renderResponse.encodeURL(worldMapUrl)%>" BORDER=1>
