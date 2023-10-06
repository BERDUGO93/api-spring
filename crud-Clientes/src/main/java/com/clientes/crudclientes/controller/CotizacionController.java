package com.clientes.crudclientes.controller;


import com.clientes.crudclientes.Entity.tblcotizaciones;
import com.clientes.crudclientes.service.CotizacionService;
import com.clientes.crudclientes.service.DetallesCotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cotizacion")
@CrossOrigin(origins = "http://localhost:4200")
public class CotizacionController {
    @Autowired
    CotizacionService cotizacionService;
    @Autowired
    DetallesCotService detallesCotService;

    @PostMapping("/createCotizacion")
    public ResponseEntity<tblcotizaciones> agregarcotizacion(@RequestBody tblcotizaciones cotizacion) {
        tblcotizaciones nuevaCotizacion = cotizacionService.agregarCotizacion(cotizacion);
        return new ResponseEntity<>(nuevaCotizacion, HttpStatus.CREATED);
    }

    @GetMapping("/listaCotizaciones")
    public ResponseEntity<List<tblcotizaciones>> listarCotizaciones() {
        List<tblcotizaciones> listaCotizaciones = cotizacionService.obtenerTodasLasCotizaciones();
        return new ResponseEntity<>(listaCotizaciones, HttpStatus.OK);
    }

    @GetMapping("/consultaCotizacion/{id}")
    public ResponseEntity<tblcotizaciones> consultarCotizacionPorId(@PathVariable Integer id) {

        tblcotizaciones cotizacion = cotizacionService.obtenerCotizacionesPorId(id);

        if (cotizacion != null) {
            return new ResponseEntity<>(cotizacion, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping("/updateCotizacion/{id}")
    public ResponseEntity<tblcotizaciones> actualizarCotizacion(@PathVariable Integer id, @RequestBody tblcotizaciones cotizacion) {
        tblcotizaciones CotizacionActualizada = cotizacionService.actualizarCotizacion(id,cotizacion);
        if (CotizacionActualizada != null) {
            return new ResponseEntity<>(CotizacionActualizada, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/deleteProducto/{id}")
    public ResponseEntity<Void> eliminarCotizacion(@PathVariable Integer id) {
        boolean eliminado = cotizacionService.eliminarcotizacion(id);
        if (eliminado) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


}
