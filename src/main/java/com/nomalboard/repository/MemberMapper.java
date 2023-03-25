package com.nomalboard.repository;

import com.nomalboard.dto.MemberTO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.lang.reflect.Member;

@Mapper
@Repository
public interface MemberMapper {

    @Insert("insert into member values (0,#{username},#{email},#{password},#{role})")
    int save(MemberTO to);

    @Select("select id, username, email, role, password from member where username = #{username}")
    MemberTO findByUsername(String username);

    @Select("select password from member where email = #{email}")
    String checkPassword(String email);

    @Select("select username from member where email = #{email}")
    String findId(String email);

    @Select("select id, username, email, role from member where username = #{username} and email = #{email}")
    MemberTO checkMember(String username, String email);

    @Update("update member set password = #{password} where username = #{username} and email = #{email}")
    int updatePassword(String password, String username, String email);
}
