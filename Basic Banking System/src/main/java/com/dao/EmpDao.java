package com.dao;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;

import com.beans.Emp;  
  
public class EmpDao {  
JdbcTemplate template;  
  
public void setTemplate(JdbcTemplate template) {  
    this.template = template;  
}  
public int save(Emp p){  
    String sql="update users set currentBalance="+p.getCurrentBalance()+"where name='"+p.getName()+"'";  
    return template.update(sql);  
}  
public int update(Emp p){  
    String sql="update users set name='"+p.getName()+"', email='"+p.getEmail()+"',currentBalance='"+p.getCurrentBalance()+"' where id="+p.getId()+"";  
    return template.update(sql);  
}  
public int delete(int id){  
    String sql="delete from users where id="+id+"";  
    return template.update(sql);  
}  
public Emp getEmpById(int id){  
    String sql="select * from users where id=?";  
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));  
}  

public List<Emp> getEmployees(){  
    return template.query("select * from users",new RowMapper<Emp>(){  
        public Emp mapRow(ResultSet rs, int row) throws SQLException {  
            Emp e=new Emp();  
            e.setId(rs.getInt(1));  
            e.setName(rs.getString(2));  
            e.setEmail(rs.getString(3));  
            e.setCurrentBalance(rs.getDouble(4));  
            return e;  
        }  
    });  
}  
}  