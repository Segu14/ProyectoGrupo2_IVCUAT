package proyectog2.dao;

import proyectog2.domain.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioDao extends JpaRepository<Usuario, Long> {
    
    Usuario findByUsername (String username);
    
    Usuario findByUsernameAndPassword(String username, String Password);

    boolean existsByUsername(String username);

}
