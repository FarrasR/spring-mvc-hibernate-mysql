package com.bootcamp.service;

import com.bootcamp.dao.EmployeeDAO;
import com.bootcamp.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;


@Service
@Transactional
public class EmployeeServiceimpl implements EmployeeService{

    @Autowired
    private EmployeeDAO employeeDAO;

    @Override
    @Transactional
    public void addEmployee(Employee employee) {
        employeeDAO.addEmployee(employee);
    }

    @Override
    @Transactional
    public List<Employee> getAllEmployees() {
        return employeeDAO.getAllEmployees();
    }

    @Override
    @Transactional
    public void deleteEmployee(Integer employeeId) {
        employeeDAO.deleteEmployee(employeeId);
    }

    @Override
    public Employee getEmployee(int employeeid) {
        return employeeDAO.getEmployee(employeeid);
    }

    @Override
    public Employee updateEmployee(Employee employee) {
        return employeeDAO.updateEmployee(employee);
    }
}
