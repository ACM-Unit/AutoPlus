package autoplus.secure.repository;

import autoplus.secure.entity.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Admin on 19.08.2016.
 */
@Repository
public interface ClientRepository extends JpaRepository<Client, Integer> {
}
