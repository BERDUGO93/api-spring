package com.clientes.crudclientes.controller;

import com.clientes.crudclientes.Entity.tblcategorias;


import com.clientes.crudclientes.service.CategoriasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/categoria")
@CrossOrigin(origins = "http://localhost:4200")
public class CategoriasController {

    @Autowired
    CategoriasService categoriasService;

    @PostMapping("/createCategorias")
    public ResponseEntity<tblcategorias> agregarCategoria(@RequestBody tblcategorias categoria) {
        tblcategorias nuevoCategoria = categoriasService.agregarCategoria(categoria);
        return new ResponseEntity<>(nuevoCategoria, HttpStatus.CREATED);
    }

    @GetMapping("/listaCategorias")
    public ResponseEntity<List<tblcategorias>> listarCategorias() {
        List<tblcategorias> listaCategorias = categoriasService.obtenerTodasLasCategorias();
        return new ResponseEntity<>(listaCategorias, HttpStatus.OK);
    }

    @GetMapping("/consultaCategoria/{id}")
    public ResponseEntity<tblcategorias> consultarCategoriaPorId(@PathVariable Integer id) {

        tblcategorias tblcategorias = categoriasService.obtenerCategoriasPorId(id);

        if (tblcategorias != null) {
            return new ResponseEntity<>(tblcategorias, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping("/updateCategoria/{id}")
    public ResponseEntity<tblcategorias> actualizarCategoria(@PathVariable Integer id, @RequestBody tblcategorias categoria) {
        tblcategorias CategoriaActualizada = categoriasService.actualizarCattegorias(id,categoria);
        if (CategoriaActualizada != null) {
            return new ResponseEntity<>(CategoriaActualizada, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/deleteCategoria/{id}")
    public ResponseEntity<Void> eliminarProducto(@PathVariable Integer id) {
        boolean eliminado = categoriasService.eliminarProducto(id);
        if (eliminado) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
