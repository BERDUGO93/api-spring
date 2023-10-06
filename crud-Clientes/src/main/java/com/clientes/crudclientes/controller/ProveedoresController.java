package com.clientes.crudclientes.controller;



import com.clientes.crudclientes.Entity.tblproveedores;
import com.clientes.crudclientes.service.ProveedoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/proveedor")
@CrossOrigin(origins = "http://localhost:4200")
public class ProveedoresController {
    @Autowired
    ProveedoresService proveedoresService;

    @PostMapping("/createProveedor")
    public ResponseEntity<tblproveedores> agregarProveedor(@RequestBody tblproveedores proveedor) {
        tblproveedores nuevoProveedor = proveedoresService.agregarProveedor(proveedor);
        return new ResponseEntity<>(nuevoProveedor, HttpStatus.CREATED);
    }

    @GetMapping("/listaProveedores")
    public ResponseEntity<List<tblproveedores>> listarProveedores() {
        List<tblproveedores> listaProveedores = proveedoresService.obtenerTodosLosProveedores();
        return new ResponseEntity<>(listaProveedores, HttpStatus.OK);
    }

    @GetMapping("/consultaProveedor/{id}")
    public ResponseEntity<tblproveedores> consultarProveedorPorId(@PathVariable Integer id) {

        tblproveedores tblproveedor = proveedoresService.obtenerProveedoresPorId(id);

        if (tblproveedor != null) {
            return new ResponseEntity<>(tblproveedor, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping("/updateProveedor/{id}")
    public ResponseEntity<tblproveedores> actualizarProveedor(@PathVariable Integer id, @RequestBody tblproveedores proveedor) {
        tblproveedores proveedorActualizado = proveedoresService.actualizarProveedor(id,proveedor);
        if (proveedorActualizado != null) {
            return new ResponseEntity<>(proveedorActualizado, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/deleteProveedor/{id}")
    public ResponseEntity<Void> eliminarProveedor(@PathVariable Integer id) {
        boolean eliminado = proveedoresService.eliminarProveedor(id);
        if (eliminado) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
