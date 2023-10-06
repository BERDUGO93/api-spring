package com.clientes.crudclientes.dto;

import javax.validation.constraints.NotBlank;

public class ClienteDto {


    private Integer id_cliente;
    @NotBlank
    private String clinombre;
    private String cliapellido;
    private String clicorreo;
    private String clidireccion;
    private String clitelefono;
    private String clidescripcion;

    public ClienteDto() {
    }

    public ClienteDto(Integer id_cliente, String clinombre, String cliapellido, String clicorreo, String clidireccion, String clitelefono, String clidescripcion) {
        this.id_cliente = id_cliente;
        this.clinombre = clinombre;
        this.cliapellido = cliapellido;
        this.clicorreo = clicorreo;
        this.clidireccion = clidireccion;
        this.clitelefono = clitelefono;
        this.clidescripcion = clidescripcion;
    }

    public Integer getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(Integer id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getClinombre() {
        return clinombre;
    }

    public void setClinombre(String clinombre) {
        this.clinombre = clinombre;
    }

    public String getCliapellido() {
        return cliapellido;
    }

    public void setCliapellido(String cliapellido) {
        this.cliapellido = cliapellido;
    }

    public String getClicorreo() {
        return clicorreo;
    }

    public void setClicorreo(String clicorreo) {
        this.clicorreo = clicorreo;
    }

    public String getClidireccion() {
        return clidireccion;
    }

    public void setClidireccion(String clidireccion) {
        this.clidireccion = clidireccion;
    }

    public String getClitelefono() {
        return clitelefono;
    }

    public void setClitelefono(String clitelefono) {
        this.clitelefono = clitelefono;
    }

    public String getClidescripcion() {
        return clidescripcion;
    }

    public void setClidescripcion(String clidescripcion) {
        this.clidescripcion = clidescripcion;
    }
}
