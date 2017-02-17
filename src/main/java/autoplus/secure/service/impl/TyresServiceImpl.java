package autoplus.secure.service.impl;

import autoplus.secure.entity.Tyres;
import autoplus.secure.repository.TyresRepository;
import autoplus.secure.service.TyresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

/**
 * Created by Admin on 19.08.2016.
 */
@Service
public class TyresServiceImpl implements TyresService {
    @Autowired
    TyresRepository repository;
    @Override
    public Tyres getTyresById(int id) {
        return repository.findOne(id);
    }

    @Override
    public List<Tyres> getTyresByName(String name) {
        return repository.findByName(name);
    }

    @Override
    public Page<Tyres> getAllTyres(int page) {
        return repository.findAll(new PageRequest(page,8, Sort.Direction.ASC, "id"));
    }

    @Override
    public Tyres addTyres(Tyres tyres) {
        return repository.saveAndFlush(tyres);
    }

    @Override
    public Tyres editTyres(Tyres tyres) {
        return repository.saveAndFlush(tyres);
    }
    @Override
    public String fileUpload(MultipartFile file, String name) {
        String message;

        if (!file.isEmpty()) {
            try {
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(new File(name)));
                FileCopyUtils.copy(file.getInputStream(), stream);
                stream.close();
                message="succ";
            }
            catch (Exception e) {
                message="errorUpload";
            }
        }
        else {
            message="empty";
        }

        return message;

    }
}
