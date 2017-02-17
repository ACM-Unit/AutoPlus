package autoplus.secure.repository;

import autoplus.secure.entity.Tyres;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Admin on 19.08.2016.
 */
@Repository
public interface TyresRepository extends JpaRepository<Tyres, Integer> {
    List<Tyres> findByName(String name);
    Page<Tyres> findAll(Pageable pageable);
}
