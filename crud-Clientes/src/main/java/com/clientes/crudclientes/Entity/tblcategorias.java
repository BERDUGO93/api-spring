package com.clientes.crudclientes.Entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class tblcategorias {
    @Id
    private Integer id_cat;
    private String catnombre;
    @Column(name = "catestado", columnDefinition = "enum (Types#CHAR)")
    private String catestado;
    private String catdescripcion;

    public tblcategorias() {
    }

    public tblcategorias(Integer id_cat, String catnombre, String catestado, String catdescripcion) {
        this.id_cat = id_cat;
        this.catnombre = catnombre;
        this.catestado = catestado;
        this.catdescripcion = catdescripcion;
    }

    public Integer getId_cat() {
        return id_cat;
    }

    public void setId_cat(Integer id_cat) {
        this.id_cat = id_cat;
    }

    public String getCatnombre() {
        return catnombre;
    }

    public void setCatnombre(String catnombre) {
        this.catnombre = catnombre;
    }

    public String getCatestado() {
        return catestado;
    }

    public void setCatestado(String catestado) {
        this.catestado = catestado;
    }

    public String getCatdescripcion() {
        return catdescripcion;
    }

    public void setCatdescripcion(String catdescripcion) {
        this.catdescripcion = catdescripcion;
    }
}
