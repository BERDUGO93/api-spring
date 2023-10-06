package com.clientes.crudclientes.controller;

import com.clientes.crudclientes.Entity.tblclientes;
import com.clientes.crudclientes.dto.ClienteDto;
import com.clientes.crudclientes.service.ClienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cliente")
@CrossOrigin(origins = "http://localhost:4200")
public class ClienteController {

    @Autowired
     ClienteService ClienteService;

    @PostMapping("/createC")
    public ResponseEntity<tblclientes> agregarCliente(@RequestBody tblclientes cliente) {
        tblclientes nuevoCliente = ClienteService.agregarCliente(cliente);
        return new ResponseEntity<>(nuevoCliente, HttpStatus.CREATED);
    }

    @GetMapping("/lista")
    public ResponseEntity<List<tblclientes>> listarClientes() {
        List<tblclientes> listaClientes = ClienteService.obtenerTodosLosClientes();
        return new ResponseEntity<>(listaClientes, HttpStatus.OK);
    }

    @GetMapping("/consulta/{id}")
    public ResponseEntity<tblclientes> consultarClientePorId(@PathVariable Integer id) {
        tblclientes cliente = ClienteService.obtenerClientePorId(id);
        if (cliente != null) {
            return new ResponseEntity<>(cliente, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping("/update/{id}")
    public ResponseEntity<tblclientes> actualizarCliente(@PathVariable Integer id, @RequestBody tblclientes cliente) {
        tblclientes clienteActualizado = ClienteService.actualizarCliente(id, cliente);
        if (clienteActualizado != null) {
            return new ResponseEntity<>(clienteActualizado, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> eliminarCliente(@PathVariable Integer id) {
        boolean eliminado = ClienteService.eliminarCliente(id);
        if (eliminado) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
