package com.clientes.crudclientes.service;

import com.clientes.crudclientes.Entity.tblclientes;
import com.clientes.crudclientes.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ClienteService {
    @Autowired
    ClienteRepository clienteRepository;



    public tblclientes agregarCliente(tblclientes cliente) {
        // Lógica para agregar un cliente a la base de datos
        return clienteRepository.save(cliente);
    }

    public List<tblclientes> obtenerTodosLosClientes() {
        // Lógica para obtener todos los clientes de la base de datos
        return clienteRepository.findAll();
    }

    public tblclientes obtenerClientePorId(Integer id) {
        // Lógica para obtener un cliente por su ID de la base de datos
        Optional<tblclientes> clienteOptional = clienteRepository.findById(id);
        return clienteOptional.orElse(null);
    }

    public tblclientes actualizarCliente(Integer id, tblclientes cliente) {
        // Lógica para actualizar un cliente en la base de datos
        Optional<tblclientes> clienteOptional = clienteRepository.findById(id);
        if (clienteOptional.isPresent()) {
            cliente.setId_cliente(id); // Asegurarse de que el ID coincida
            return clienteRepository.save(cliente);
        } else {
            return null; // Cliente no encontrado
        }
    }

    public boolean eliminarCliente(Integer id) {
        // Lógica para eliminar un cliente de la base de datos por su ID
        Optional<tblclientes> clienteOptional = clienteRepository.findById(id);
        if (clienteOptional.isPresent()) {
            clienteRepository.deleteById(id);
            return true; // Cliente eliminado con éxito
        } else {
            return false; // Cliente no encontrado
        }
    }

}
