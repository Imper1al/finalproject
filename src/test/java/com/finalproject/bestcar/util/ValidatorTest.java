package com.finalproject.bestcar.util;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import javax.servlet.http.HttpServletRequest;

import static org.mockito.Mockito.mock;

public class ValidatorTest {

    HttpServletRequest request;

    @Before
    public void init(){
        request = mock(HttpServletRequest.class);
        request.setAttribute("brand", "brand");
        request.setAttribute("name", "name");
        request.setAttribute("carClass", "S");
        request.setAttribute("color", "blue");
        request.setAttribute("price", 1000);
        request.setAttribute("photo", "photo");
        request.setAttribute("description", "description");
        request.setAttribute("surname", "surname");
        request.setAttribute("phone", "555554444");
        request.setAttribute("password", "password");
        request.setAttribute("password2", "password");
        request.setAttribute("money", 1000);
        request.setAttribute("series", "MT");
        request.setAttribute("number", 121212);
        request.setAttribute("whoMade", "whoMade");
        request.setAttribute("regDate", "1996-01-29");
    }

    @Test
    public void hashingTest(){
        Assert.assertTrue(Validator.sumIsValid(request));
        Assert.assertTrue(Validator.passportIsValid(request));
        Assert.assertTrue(Validator.carValid(request));
        Assert.assertTrue(Validator.userValid(request));
    }

}
