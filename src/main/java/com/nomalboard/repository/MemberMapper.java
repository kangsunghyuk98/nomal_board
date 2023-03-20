package com.nomalboard.repository;

import com.nomalboard.dto.MemberTO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MemberMapper {

    @Insert("insert into member values (0,#{username},#{email},#{password},#{role})")
    int save(MemberTO to);

    @Select("select id, username, email, role, password from member where username = #{username}")
    MemberTO findByUsername(String username);
}
