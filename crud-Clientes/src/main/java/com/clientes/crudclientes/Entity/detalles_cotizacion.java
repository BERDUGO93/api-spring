package com.clientes.crudclientes.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class detalles_cotizacion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_dcot;
    private Integer id_cot;
    private Integer dc_id_prod;
    private Integer dc_cantidad;
    private double precio;

    public detalles_cotizacion() {
    }

    public detalles_cotizacion(Integer id_dcot, Integer id_cot, Integer dc_id_prod, Integer dc_cantidad, double precio) {
        this.id_dcot = id_dcot;
        this.id_cot = id_cot;
        this.dc_id_prod = dc_id_prod;
        this.dc_cantidad = dc_cantidad;
        this.precio = precio;
    }

    public Integer getId_dcot() {
        return id_dcot;
    }

    public void setId_dcot(Integer id_dcot) {
        this.id_dcot = id_dcot;
    }

    public Integer getId_cot() {
        return id_cot;
    }

    public void setId_cot(Integer id_cot) {
        this.id_cot = id_cot;
    }

    public Integer getDc_id_prod() {
        return dc_id_prod;
    }

    public void setDc_id_prod(Integer dc_id_prod) {
        this.dc_id_prod = dc_id_prod;
    }

    public Integer getDc_cantidad() {
        return dc_cantidad;
    }

    public void setDc_cantidad(Integer dc_cantidad) {
        this.dc_cantidad = dc_cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
}
