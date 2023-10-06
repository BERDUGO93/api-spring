package com.clientes.crudclientes.repository;

import com.clientes.crudclientes.Entity.tblcotizaciones;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CotizacionRepository extends JpaRepository<tblcotizaciones,Integer> {
}
