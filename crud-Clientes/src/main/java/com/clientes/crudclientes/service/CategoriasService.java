package com.clientes.crudclientes.service;

import com.clientes.crudclientes.Entity.tblcategorias;
import com.clientes.crudclientes.Entity.tblproductos;
import com.clientes.crudclientes.repository.CategoriasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional
@Service
public class CategoriasService {
    @Autowired
    CategoriasRepository CategoriasRepository;
    public tblcategorias agregarCategoria(tblcategorias categoria) {
        // Lógica para agregar una nueva categoria a la base de datos
        return CategoriasRepository.save(categoria);
    }

    public List<tblcategorias> obtenerTodasLasCategorias() {
        // Lógica para obtener todos las categorias de la base de datos
        return CategoriasRepository.findAll();
    }

    public tblcategorias obtenerCategoriasPorId(Integer id) {
        // Lógica para obtener una coategoria por su ID de la base de datos
        Optional<tblcategorias> categoriaOptional = CategoriasRepository.findById(id);
        return categoriaOptional.orElse(null);
    }

    public tblcategorias actualizarCattegorias(Integer id, tblcategorias categoria) {
        // Lógica para actualizar una categoria en la base de datos
        Optional<tblcategorias> categoriaOptional = CategoriasRepository.findById(id);
        if (categoriaOptional.isPresent()) {
            categoria.setId_cat(id); // Asegurarse de que el ID coincida
            return CategoriasRepository.save(categoria);
        } else {
            return null; // categoria no encontrad
        }
    }

    public boolean eliminarProducto(Integer id) {
        // Lógica para eliminar una categoria de la base de datos por su ID
        Optional<tblcategorias> categoriaOptional = CategoriasRepository.findById(id);
        if (categoriaOptional.isPresent()) {
            CategoriasRepository.deleteById(id);
            return true; // Categoria eliminado con éxito
        } else {
            return false; // categoria  no encontrado
        }
    }
}
