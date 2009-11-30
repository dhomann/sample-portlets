package com.sun.portal.portlet.event;

import javax.portlet.ResourceResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Helper class to deliver resources.
 */
public class ResourceHelper {
    public static void deliverResource(ResourceResponse response, String name, String contentType) throws IOException {
        System.out.println("Deliver resource: " + name);
        response.setContentType(contentType);
        OutputStream outputStream = response.getPortletOutputStream();
        try {
            InputStream inputStream = ResourceHelper.class.getResourceAsStream(name);
            if (inputStream == null) {
                throw new IllegalArgumentException("Resource not found: " + name);
            }
            try {
                byte[] buffer = new byte[4096];
                int read;
                do {
                    read = inputStream.read(buffer);
                    if (read != -1) {
                        outputStream.write(buffer, 0, read);
                    }
                } while (read != -1);
            } finally {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    // ignore
                }
            }
        } finally {
            outputStream.close();
        }
    }
}
