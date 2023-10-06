package com.clientes.crudclientes.controller;

import com.clientes.crudclientes.Entity.tblclientes;
import com.clientes.crudclientes.Entity.tblproductos;
import com.clientes.crudclientes.service.ClienteService;
import com.clientes.crudclientes.service.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/producto")
@CrossOrigin(origins = "http://localhost:4200")
public class ProductosController {
    @Autowired
    ProductoService ProductoService;

    @PostMapping("/createProductos")
    public ResponseEntity<tblproductos> agregarProducto(@RequestBody tblproductos productos) {
        tblproductos nuevoProducto = ProductoService.agregarProducto(productos);
        return new ResponseEntity<>(nuevoProducto, HttpStatus.CREATED);
    }

    @GetMapping("/listaProductos")
    public ResponseEntity<List<tblproductos>> listarProductos() {
        List<tblproductos> listaProductos = ProductoService.obtenerTodosLosProductos();
        return new ResponseEntity<>(listaProductos, HttpStatus.OK);
    }

    @GetMapping("/consultaProducto/{id}")
    public ResponseEntity<tblproductos> consultarProductoPorId(@PathVariable String id) {
        String idString = id;
        Integer Id =Integer.parseInt(idString);
        tblproductos tblproductos = ProductoService.obtenerProdcutosPorId(Id);

        if (tblproductos != null) {
            return new ResponseEntity<>(tblproductos, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping("/updateProducto/{id}")
    public ResponseEntity<tblproductos> actualizarProducto(@PathVariable Integer id, @RequestBody tblproductos producto) {
        tblproductos productoActualizado = ProductoService.actualizarProducto(id,producto);
        if (productoActualizado != null) {
            return new ResponseEntity<>(productoActualizado, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/deleteProducto/{id}")
    public ResponseEntity<Void> eliminarProducto(@PathVariable Integer id) {
        boolean eliminado = ProductoService.eliminarProducto(id);
        if (eliminado) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
