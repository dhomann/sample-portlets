/*
 * The contents of this file are subject to the terms
 * of the Common Development and Distribution License
 * (the License).  You may not use this file except in
 * compliance with the License.
 *
 * You can obtain a copy of the license at
 * http://www.sun.com/cddl/cddl.html or
 * at portlet-repository/CDDLv1.0.txt.
 * See the License for the specific language governing
 * permissions and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL
 * Header Notice in each file and include the License file
 * at portlet-repository/CDDLv1.0.txt.
 * If applicable, add the following below the CDDL Header,
 * with the fields enclosed by brackets [] replaced by
 * you own identifying information:
 * "Portions Copyrighted [year] [name of copyright owner]"
 *
 *  Portions Copyrighted 2007
 */
package com.sun.portal.portlet.event;

import javax.portlet.*;
import java.io.IOException;

public class ContinentMapPortlet extends GenericPortlet {
    
    public void processEvent(EventRequest request, EventResponse response) {
        Event event = request.getEvent();
        if(event.getName().equals("Continent")){
            Continent payload = (Continent)event.getValue();
            response.setRenderParameter("continentName", payload.getName());
        }
    }
    
    
    public void doView(RenderRequest request, RenderResponse response) throws PortletException,IOException {
        response.setContentType("text/html");
        PortletRequestDispatcher dispatcher =
                getPortletContext().getRequestDispatcher("/WEB-INF/jsp/ContinentMapPortlet_view.jsp");
        dispatcher.include(request, response);
    }
    
    public void doHelp(RenderRequest request, RenderResponse response) throws PortletException,IOException {
        
        response.setContentType("text/html");
        PortletRequestDispatcher dispatcher =
                getPortletContext().getRequestDispatcher("/WEB-INF/jsp/ContinentMapPortlet_help.jsp");
        dispatcher.include(request, response);
    }
    
}