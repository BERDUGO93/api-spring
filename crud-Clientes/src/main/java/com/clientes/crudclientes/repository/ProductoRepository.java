package com.clientes.crudclientes.repository;


import com.clientes.crudclientes.Entity.tblproductos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductoRepository extends JpaRepository<tblproductos,Integer> {
}
