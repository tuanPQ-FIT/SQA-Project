package com.bookworm.service.impl;

import com.bookworm.repository.AdvertRepository;
import com.bookworm.model.Advert;
import com.bookworm.service.AdvertService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdvertServiceImpl implements AdvertService {
    @Autowired
    AdvertRepository advertRepository;

    @Override
    public List<Advert> getAll() {
        return (List<Advert>)advertRepository.findAll();
    }

    @Override
    public Advert saveAdvert(Advert advert) {
        return advertRepository.save(advert);
    }

    @Override
    public List<Advert> getAdverts() {
        return (List<Advert>) advertRepository.findAll();
    }

    @Override
    public Advert getAdvertById(Long id) {
        return advertRepository.findById(id).get();
    }

    @Override
    public void deleteAdvert(Advert advert) {
        advertRepository.delete(advert);
    }


}
