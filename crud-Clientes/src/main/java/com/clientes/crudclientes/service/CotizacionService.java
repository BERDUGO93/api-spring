package com.clientes.crudclientes.service;

import com.clientes.crudclientes.Entity.tblcategorias;
import com.clientes.crudclientes.Entity.tblcotizaciones;
import com.clientes.crudclientes.repository.CotizacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional

public class CotizacionService {

    @Autowired
    CotizacionRepository cotizacionRepository;
    public tblcotizaciones agregarCotizacion(tblcotizaciones cotizaciones) {
        // Lógica para agregar una nueva cotizacion a la base de datos
        return cotizacionRepository.save(cotizaciones);
    }

    public List<tblcotizaciones> obtenerTodasLasCotizaciones() {
        // Lógica para obtener todos las cotizacion de la base de datos
        return cotizacionRepository.findAll();
    }

    public tblcotizaciones obtenerCotizacionesPorId(Integer id) {
        // Lógica para obtener una cotizacion por su ID de la base de datos
        Optional<tblcotizaciones> cotizacionOptional = cotizacionRepository.findById(id);
        return cotizacionOptional.orElse(null);
    }

    public tblcotizaciones actualizarCotizacion (Integer id, tblcotizaciones cotizacion) {
        // Lógica para actualizar una cotizacion en la base de datos
        Optional<tblcotizaciones> cotizacionOptional = cotizacionRepository.findById(id);
        if (cotizacionOptional.isPresent()) {
            cotizacion.setId_cot(id); // Asegurarse de que el ID coincida
            return cotizacionRepository.save(cotizacion);
        } else {
            return null; // cotizacion no encontrad
        }
    }

    public boolean eliminarcotizacion(Integer id) {
        // Lógica para eliminar una cotizacion de la base de datos por su ID
        Optional<tblcotizaciones> cotizacionOptional = cotizacionRepository.findById(id);
        if (cotizacionOptional.isPresent()) {
            cotizacionRepository.deleteById(id);
            return true; // Cotizacion eliminado con éxito
        } else {
            return false; // cotizacion  no encontrado
        }
    }


}
