package com.clientes.crudclientes.repository;

import com.clientes.crudclientes.Entity.tblclientes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClienteRepository extends JpaRepository<tblclientes,Integer> {
}
