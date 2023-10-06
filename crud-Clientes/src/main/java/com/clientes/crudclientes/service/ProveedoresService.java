package com.clientes.crudclientes.service;


import com.clientes.crudclientes.Entity.tblproveedores;
import com.clientes.crudclientes.repository.ProveedoresRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ProveedoresService {
    @Autowired
    ProveedoresRepository proveedoresRepository;

    public tblproveedores agregarProveedor(tblproveedores proveedor) {
        // Lógica para agregar un Proveedor a la base de datos
        return proveedoresRepository.save(proveedor);
    }

    public List<tblproveedores> obtenerTodosLosProveedores() {
        // Lógica para obtener todos los Proveedores de la base de datos
        return proveedoresRepository.findAll();
    }

    public tblproveedores obtenerProveedoresPorId(Integer id) {
        // Lógica para obtener un Proveedores por su ID de la base de datos
        Optional<tblproveedores> proveedorOptional = proveedoresRepository.findById(id);
        return proveedorOptional.orElse(null);
    }

    public tblproveedores actualizarProveedor(Integer id, tblproveedores proveedor) {
        // Lógica para actualizar un Proveedor en la base de datos
        Optional<tblproveedores> proveedorOptional = proveedoresRepository.findById(id);
        if (proveedorOptional.isPresent()) {
            proveedor.setId_prov(id); // Asegurarse de que el ID coincida
            return proveedoresRepository.save(proveedor);
        } else {
            return null; // Proveedor no encontrado
        }
    }

    public boolean eliminarProveedor(Integer id) {
        // Lógica para eliminar un Proveedor de la base de datos por su ID
        Optional<tblproveedores> proveedorOptional = proveedoresRepository.findById(id);
        if (proveedorOptional.isPresent()) {
            proveedoresRepository.deleteById(id);
            return true; // proveedor eliminado con éxito
        } else {
            return false; // Proveedor no eliminado
        }

    }
}
