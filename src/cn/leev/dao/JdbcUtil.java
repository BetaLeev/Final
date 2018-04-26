package cn.leev.dao;

import DAO.Test;

import java.util.List;

/**
 * Created by alphb on 25/04/2018.
 */
public interface JdbcUtil<T> {
    T add(T t);

    void delete(T t);

    T update(T t);

    T findOne(Integer id);

    List <T> findAll();
}
