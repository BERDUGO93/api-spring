package com.clientes.crudclientes.service;


import com.clientes.crudclientes.Entity.tblproductos;
import com.clientes.crudclientes.repository.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ProductoService {
    @Autowired
    ProductoRepository productoRepository;


    public tblproductos agregarProducto(tblproductos producto) {
        // Lógica para agregar un Producto a la base de datos
        return productoRepository.save(producto);
    }

    public List<tblproductos> obtenerTodosLosProductos() {
        // Lógica para obtener todos los Producto de la base de datos
        return productoRepository.findAll();
    }

    public tblproductos obtenerProdcutosPorId(Integer id) {
        // Lógica para obtener un Producto por su ID de la base de datos
        Optional<tblproductos> productoOptional = productoRepository.findById(id);
        return productoOptional.orElse(null);
    }

    public tblproductos actualizarProducto(Integer id, tblproductos producto) {
        // Lógica para actualizar un Producto en la base de datos
        Optional<tblproductos> productoOptional = productoRepository.findById(id);
        if (productoOptional.isPresent()) {
            producto.setId_prod(id); // Asegurarse de que el ID coincida
            return productoRepository.save(producto);
        } else {
            return null; // Producto no encontrado
        }
    }

    public boolean eliminarProducto(Integer id) {
        // Lógica para eliminar un Producto de la base de datos por su ID
        Optional<tblproductos> productoOptional = productoRepository.findById(id);
        if (productoOptional.isPresent()) {
            productoRepository.deleteById(id);
            return true; // Producto eliminado con éxito
        } else {
            return false; // Producto no encontrado
        }
    }

}
