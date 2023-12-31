package com.clientes.crudclientes.Entity;

import jakarta.persistence.*;

@Entity
public class tblproductos {

    @Id

    private Integer id_prod;
    private String prodnombre;
    private String prodprecio;
    private Integer prod_id_categoria;
    @Column(name = "prodestado", columnDefinition = "enum (Types#CHAR)")
    private String prodestado;
    private Integer prodstock_disp;
    private String prod_descripcion;

    private Integer prod_id_prov;
    private String catnombre;


    public tblproductos() {
    }

    public tblproductos(Integer id_prod, String prodnombre, String prodprecio, Integer prod_id_categoria, String prodestado, Integer prodstock_disp, String prod_descripcion, Integer prod_id_prov, String catnombre) {
        this.id_prod = id_prod;
        this.prodnombre = prodnombre;
        this.prodprecio = prodprecio;
        this.prod_id_categoria = prod_id_categoria;
        this.prodestado = prodestado;
        this.prodstock_disp = prodstock_disp;
        this.prod_descripcion = prod_descripcion;
        this.prod_id_prov = prod_id_prov;
        this.catnombre = catnombre;
    }

    public Integer getId_prod() {
        return id_prod;
    }

    public void setId_prod(Integer id_prod) {
        this.id_prod = id_prod;
    }

    public String getProdnombre() {
        return prodnombre;
    }

    public void setProdnombre(String prodnombre) {
        this.prodnombre = prodnombre;
    }

    public String getProdprecio() {
        return prodprecio;
    }

    public void setProdprecio(String prodprecio) {
        this.prodprecio = prodprecio;
    }

    public Integer getProd_id_categoria() {
        return prod_id_categoria;
    }

    public void setProd_id_categoria(Integer prod_id_categoria) {
        this.prod_id_categoria = prod_id_categoria;
    }

    public String getProdestado() {
        return prodestado;
    }

    public void setProdestado(String prodestado) {
        this.prodestado = prodestado;
    }

    public Integer getProdstock_disp() {
        return prodstock_disp;
    }

    public void setProdstock_disp(Integer prodstock_disp) {
        this.prodstock_disp = prodstock_disp;
    }

    public String getProd_descripcion() {
        return prod_descripcion;
    }

    public void setProd_descripcion(String prod_descripcion) {
        this.prod_descripcion = prod_descripcion;
    }

    public Integer getProd_id_prov() {
        return prod_id_prov;
    }

    public void setProd_id_prov(Integer prod_id_prov) {
        this.prod_id_prov = prod_id_prov;
    }

    public String getCatnombre() {
        return catnombre;
    }

    public void setCatnombre(String catnombre) {
        this.catnombre = catnombre;
    }
}
