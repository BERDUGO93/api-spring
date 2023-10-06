package com.clientes.crudclientes.repository;

import com.clientes.crudclientes.Entity.detalles_cotizacion;
import com.clientes.crudclientes.Entity.tblcotizaciones;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetallescotizacionRepository extends JpaRepository<detalles_cotizacion,Integer> {
}
