import './App.css';
import React, { Component } from 'react'
import { NavBar } from "./navbar";
import { SelectCategoria } from "./selectCategoria";
import { ListView } from "./listView";
import { Modal } from './modal'

import { useState } from 'react';
export class App extends Component {
    // function App() extends Component {
    constructor(props) {
        super(props)

        this.state = {
            categoria: 0,
            datosAplicacion: {
                id_aplicacion: 0,
                codigo_aplicacion: "",
                nombre_aplicacion: "",
                descripcion_aplicacion: "",
                precio_aplicacion: 0,
                autor_aplicacion: "",
                logo_aplicacion: "",
                imagen_aplicacion: "",
                is_instalada_aplicacion: 0,
                id_categoria_aplicacion: 0,
                nombre_categoria: ""
            },
        }
    }
    OnChangeCategory = (id_categoria) => {
        this.setState({
            categoria: id_categoria
        });
    }

    OnSelectApp = (appObj) => {
        this.setState({
            datosAplicacion: appObj
        });
    }

    render() {
        return (
            <div className="App">
                <Modal DatosAplicacion={this.state.datosAplicacion}/>
                <div className="container">
                    <div className="row">
                        <div className="col-sm">
                            <NavBar />
                        </div>
                    </div>
                    <div className="row">
                        <div className="col-sm">
                            <SelectCategoria OnChangeCategory={this.OnChangeCategory} />
                        </div>
                    </div>
                    <div className="row">
                        <ListView Categoria={this.state.categoria} OnSelectApp={this.OnSelectApp}/>
                    </div>
                </div>
            </div>
            
        );
    }
}

export default App;
