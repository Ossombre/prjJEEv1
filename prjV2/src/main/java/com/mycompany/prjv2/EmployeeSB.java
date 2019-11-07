/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.prjv2;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author hadri
 */
@Stateless
public class EmployeeSB {

    @PersistenceContext
    EntityManager em;
    
    public List getEmployees() {
        Query q = em.createQuery("SELECT e FROM Employees e");
        return q.getResultList();
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
