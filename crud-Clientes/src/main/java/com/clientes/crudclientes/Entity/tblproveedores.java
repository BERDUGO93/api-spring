package com.clientes.crudclientes.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class tblproveedores {
    @Id
    private Integer id_prov;
    private String pronombre;
    private String prodireccion;
    private String protelefono;
    @Column(name = "proestado", columnDefinition = "enum (Types#CHAR)")
    private  String proestado;
    private String prodescripcion;
    private String procorreo;
    private String prorepresentante;

    public tblproveedores() {
    }

    public tblproveedores(Integer id_prov, String pronombre, String prodireccion, String protelefono, String proestado, String prodescripcion, String procorreo, String prorepresentante) {
        this.id_prov = id_prov;
        this.pronombre = pronombre;
        this.prodireccion = prodireccion;
        this.protelefono = protelefono;
        this.proestado = proestado;
        this.prodescripcion = prodescripcion;
        this.procorreo = procorreo;
        this.prorepresentante = prorepresentante;
    }

    public Integer getId_prov() {
        return id_prov;
    }

    public void setId_prov(Integer id_prov) {
        this.id_prov = id_prov;
    }

    public String getPronombre() {
        return pronombre;
    }

    public void setPronombre(String pronombre) {
        this.pronombre = pronombre;
    }

    public String getProdireccion() {
        return prodireccion;
    }

    public void setProdireccion(String prodireccion) {
        this.prodireccion = prodireccion;
    }

    public String getProtelefono() {
        return protelefono;
    }

    public void setProtelefono(String protelefono) {
        this.protelefono = protelefono;
    }

    public String getProestado() {
        return proestado;
    }

    public void setProestado(String proestado) {
        this.proestado = proestado;
    }

    public String getProdescripcion() {
        return prodescripcion;
    }

    public void setProdescripcion(String prodescripcion) {
        this.prodescripcion = prodescripcion;
    }

    public String getProcorreo() {
        return procorreo;
    }

    public void setProcorreo(String procorreo) {
        this.procorreo = procorreo;
    }

    public String getProrepresentante() {
        return prorepresentante;
    }

    public void setProrepresentante(String prorepresentante) {
        this.prorepresentante = prorepresentante;
    }
}
