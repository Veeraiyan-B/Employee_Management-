package edu.jsp.employee_management.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import edu.jsp.employee_management.dto.Employee;

public class EmployeeDao {

	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");

	public void saveEmployee(Employee employee) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.persist(employee);
		et.commit();

	}

	public Employee getEmployeeByEmail(String email) {

		
		try {

			EntityManager em = emf.createEntityManager();

			Query q =em.createQuery("select e from Employee e where e.email=?1"); 

			q.setParameter(1, email);

			Employee e = (Employee) q.getSingleResult();
			return e;
	}catch(Exception e) {
		
	     return null;
     }
	}
	 
	public List<Employee>getAllEmployeeDetails(){
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("select e from Employee e");
		
		return q.getResultList();
	}
	public Employee getEmployeeById(int id) {
		return emf.createEntityManager().find(Employee.class, id);
	}
	
	public String deleteById(int id) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		Employee employee=em.find(Employee.class, id);
		if(employee!=null) {
			
			et.begin();
			em.remove(employee);
			et.commit();
			return "data delete successfully!!";
		}else {
			return "Id NOT Found";
		}
		
	}
	public void UpdateEmployee(Employee employee) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		et.begin();
		em.merge(employee);
		et.commit();
	}
	

	
}
