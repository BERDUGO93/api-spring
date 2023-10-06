package com.clientes.crudclientes.repository;

import com.clientes.crudclientes.Entity.tblcategorias;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriasRepository extends JpaRepository<tblcategorias,Integer> {
}
