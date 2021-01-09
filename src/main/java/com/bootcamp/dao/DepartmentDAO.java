package com.bootcamp.dao;

import com.bootcamp.model.Department;
import com.bootcamp.model.Employee;

import java.util.List;

public interface DepartmentDAO {

    void addDepartment(Department department);

    List<Department> getAllDepartment();

    void deleteDepartment(Integer DepartmentId);

    Department updateDepartment(Department department);

    Department getDepartment(int DepartmentId);
}
