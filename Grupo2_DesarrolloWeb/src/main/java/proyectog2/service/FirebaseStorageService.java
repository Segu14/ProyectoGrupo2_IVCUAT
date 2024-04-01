package proyectog2.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public interface FirebaseStorageService {
    
    public String cargaImagen(MultipartFile archivoLocalCliente, String carpeta, Long id);
    
    // El BucketName es el <id_del_proyecto> + ".appspot.com#
    final String BucketName = "hermes-19ca3.appspot.com";
    
    // Esta es la ruta básica de este proyecto HERMES
    final String rutaSuperiorStorage = "hermes";
    
    // Ubicación donde se encuentra el archivo de configuración Json
    final String rutaJsonFile = "firebase";
    
    // El nombre del archivo Json
    final String archivoJsonFile = "hermes-19ca3-firebase-adminsdk-889le-e2fd7acf6e.json";
    
}