package com.mahyar.icpctehran.daos;

import java.sql.SQLException;
import java.util.List;

public interface DAO<T> {
    List<T> findAll() throws SQLException;
    T findById(int id) throws SQLException;
    void save(T entity) throws SQLException;
    void update(T entity) throws SQLException;
    void deleteById(T entity) throws SQLException;
}
