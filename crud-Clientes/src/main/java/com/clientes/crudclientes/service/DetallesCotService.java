package com.clientes.crudclientes.service;

import com.clientes.crudclientes.Entity.detalles_cotizacion;
import com.clientes.crudclientes.Entity.tblcotizaciones;
import com.clientes.crudclientes.repository.DetallescotizacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class DetallesCotService {
    @Autowired
    DetallescotizacionRepository detallescotizacionRepository;

    public detalles_cotizacion agregardetallesCotizacion(detalles_cotizacion dcotizacion) {
        // Lógica para agregar una nueva detalles cotizacion a la base de datos
        return detallescotizacionRepository.save(dcotizacion);
    }

    public List<detalles_cotizacion> obtenerdetallesCotizacion() {
        // Lógica para obtener todos las detalles cotizacion de la base de datos
        return detallescotizacionRepository.findAll();
    }

    public detalles_cotizacion obtenerdetallecotizacionPorId(Integer id) {
        // Lógica para obtener una detalles cotizacion por su ID de la base de datos
        Optional<detalles_cotizacion> dcotizacionOptional = detallescotizacionRepository.findById(id);
        return dcotizacionOptional.orElse(null);
    }

    public detalles_cotizacion actualizardetallesCot (Integer id, detalles_cotizacion dcotizacion) {
        // Lógica para actualizar una detalles cotizacion en la base de datos
        Optional<detalles_cotizacion> dcotizacionOptional = detallescotizacionRepository.findById(id);
        if (dcotizacionOptional.isPresent()) {
            dcotizacion.setId_cot(id); // Asegurarse de que el ID coincida
            return detallescotizacionRepository.save(dcotizacion);
        } else {
            return null; // cotizacion no encontrad
        }
    }

    public boolean eliminardetallescotizacion(Integer id) {
        // Lógica para eliminar una detalles cotizacion de la base de datos por su ID
        Optional<detalles_cotizacion> dcotizacionOptional = detallescotizacionRepository.findById(id);
        if (dcotizacionOptional.isPresent()) {
         detallescotizacionRepository.deleteById(id);
            return true; // Cotizacion eliminado con éxito
        } else {
            return false; // cotizacion  no encontrado
        }
    }

}
