package repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import model.Client;
import model.Reservation;

public interface ClientRepository extends JpaRepository<Client, Long> {

	@Query("select c from Client c left join fetch c.reservations where c.id_client=:idClient")
	Optional<Client> findCustomByIdWithReservation(@Param("idClient") Long id_client);

}