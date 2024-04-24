package proyectog2.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="producto")
public class Producto implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_producto")
    private Long idProducto;
    //private Long idCategoria;  ya no se usa por el @manyToOne
    private String nombreProducto;
    private String detalle;
    private double precio;
    private int existencias;
    private String rutaImagen;
    private boolean activo;

    private Long idCategoria;
    
    /*@ManyToOne
    @JoinColumn(name="id_categoria")
    Categoria categoria;*/


    public Producto() {
    }

    public Producto(String nombreProducto, String detalle, double precio, int existencias, String rutaImagen, boolean activo, Long idCategoria, Categoria categoria) {
        this.nombreProducto = nombreProducto;
        this.detalle = detalle;
        this.precio = precio;
        this.existencias = existencias;
        this.rutaImagen = rutaImagen;
        this.activo = activo;
        this.idCategoria = idCategoria;
    }

    
    
}