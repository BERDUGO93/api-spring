package com.clientes.crudclientes.repository;

import com.clientes.crudclientes.Entity.tblproveedores;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProveedoresRepository extends JpaRepository<tblproveedores,Integer> {
}
