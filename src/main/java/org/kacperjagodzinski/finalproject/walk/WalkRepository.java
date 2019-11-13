package org.kacperjagodzinski.finalproject.walk;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface WalkRepository extends JpaRepository<Walk,Long> {

    @Query("select w from Walk w where user_id=?1")
    public List<Walk> findUserWalks(Long id);
}
