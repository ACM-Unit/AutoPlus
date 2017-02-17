package autoplus.secure.service;

import autoplus.secure.entity.Tyres;
import org.springframework.data.domain.Page;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * Created by Admin on 19.08.2016.
 */
public interface TyresService {
    Tyres getTyresById(int id);
    List<Tyres> getTyresByName(String name);
    Page<Tyres> getAllTyres(int page);
    Tyres addTyres(Tyres tyres);
    Tyres editTyres(Tyres tyres);
    String fileUpload(MultipartFile file, String name);
}
