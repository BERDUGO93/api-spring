package com.clientes.crudclientes.Entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
public class tblcotizaciones {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_cot;
    private Integer cot_id_cliente;
    private Integer cot_id_usuario;
    private Date cotfecha;
    private double Totalcot;
    @Column(name = "cotestado", columnDefinition = "enum (Types#CHAR)")
    private String cotestado;

    public tblcotizaciones() {
    }

    public tblcotizaciones(Integer id_cot, Integer cot_id_cliente, Integer cot_id_usuario, Date cotfecha, double totalcot, String cotestado) {
        this.id_cot = id_cot;
        this.cot_id_cliente = cot_id_cliente;
        this.cot_id_usuario = cot_id_usuario;
        this.cotfecha = cotfecha;
        Totalcot = totalcot;
        this.cotestado = cotestado;
    }

    public Integer getId_cot() {
        return id_cot;
    }

    public void setId_cot(Integer id_cot) {
        this.id_cot = id_cot;
    }

    public Integer getCot_id_cliente() {
        return cot_id_cliente;
    }

    public void setCot_id_cliente(Integer cot_id_cliente) {
        this.cot_id_cliente = cot_id_cliente;
    }

    public Integer getCot_id_usuario() {
        return cot_id_usuario;
    }

    public void setCot_id_usuario(Integer cot_id_usuario) {
        this.cot_id_usuario = cot_id_usuario;
    }

    public Date getCotfecha() {
        return cotfecha;
    }

    public void setCotfecha(Date cotfecha) {
        this.cotfecha = cotfecha;
    }

    public double getTotalcot() {
        return Totalcot;
    }

    public void setTotalcot(double totalcot) {
        Totalcot = totalcot;
    }

    public String getCotestado() {
        return cotestado;
    }

    public void setCotestado(String cotestado) {
        this.cotestado = cotestado;
    }
}
