package proyectog2.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.List;
import lombok.Data;

@Data
@Entity
@Table(name = "categoria")
public class Categoria implements Serializable {    
    
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_categoria")
    private Long idCategoria;
    private String nombreCategoria;
    private boolean activo;

    /*@OneToMany
    @JoinColumn(name = "id_categoria", updatable = false)
    List<Producto> productos;*/

    public Categoria() {
    }

    public Categoria(String nombreCategoria, boolean activo) {
        this.nombreCategoria = nombreCategoria;
        this.activo = activo;
    }

}