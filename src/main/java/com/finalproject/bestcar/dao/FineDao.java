package com.finalproject.bestcar.dao;

import com.finalproject.bestcar.entity.Fine;

import java.util.List;

/**
 *
 * @author Vladyslav Yanytskyi
 *
 */

public interface FineDao {

    //CREATE
    void insertFine(Fine fine);

    //READ
    List<Fine> selectFines(Integer userId);
    Boolean finesExist (Integer userId);

    //DELETE
    void deleteFine(Integer id);

}
