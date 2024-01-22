package my.utm.ip.spring_jdbc.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import my.utm.ip.spring_jdbc.entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
@Repository
public class UserRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static final class UserMapper implements RowMapper<User> {
        public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
            user.setUserId(rs.getInt("UserId"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
            user.setName(rs.getString("name"));
            user.setRole(rs.getString("role"));
            user.setAddress(rs.getString("address"));
            user.setResidentialArea(rs.getString("ResidentialArea"));
            user.setIDNumber(rs.getString("IDNumber"));
            return user;
        }
    }

    public List<User> findAll() {
        String sql = "SELECT * FROM users";
        return jdbcTemplate.query(sql, new UserMapper());
    }

    public User findByEmailAndPassword(String email, String password) {
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
        return jdbcTemplate.queryForObject(sql, new UserMapper(), email, password);
    }

    public User findUserByEmail(String email) {
        String sql = "SELECT * FROM users WHERE email =?";
        return jdbcTemplate.queryForObject(sql, new UserMapper(), email);
    }

    // Additional methods as needed
}
