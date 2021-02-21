package com.finalproject.bestcar.servlet.user;

import com.finalproject.bestcar.servlet.general.ErrorServlet;
import org.junit.Test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static org.mockito.Mockito.*;

public class ReturnCarTest {

    private final static String path = "/history";

    @Test
    public void whenCallDoPostThenServletRedirectHistoryServlet() throws ServletException, IOException {

        final ReturnCarServlet servlet = new ReturnCarServlet();

        final HttpServletRequest request = mock(HttpServletRequest.class);
        final HttpServletResponse response = mock(HttpServletResponse.class);

        servlet.doPost(request, response);

        verify(response, times(1)).sendRedirect(request.getContextPath() + path);
    }

}
