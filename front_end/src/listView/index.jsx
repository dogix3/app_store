import React, { Component } from 'react'
import axios from 'axios'
import { Raiting } from '../raiting'
import {PrecioAplicacion} from '../services/servicios'
export class ListView extends Component {
    constructor(props) {
        super(props)

        this.state = {
            listaAplicaciones: []
        }
    }
    GetApplicarionList = () => {

        axios.get(`http://127.0.0.1:3000/api/aplicaciones/categoria/${this.props.Categoria}`).then(resp => {
            return resp;
        }).then(response => {
            if (response.status == 200) {
                this.setState({
                    listaAplicaciones: response.data
                })
            } else {
                this.setState({
                    listaAplicaciones: <div>Se ha presentado un problema al obtener los datos</div>
                })
            }
        })
    }
    GetElementKey = (e) => {
        // var myModal = new bootstrap.Modal(document.getElementById('myModal'), options)
        // myModal.show(modalToggle)
    }
    componentDidMount() {
        this.GetApplicarionList();
    }

    componentDidUpdate(prevProps) {
        if (this.props.Categoria !== prevProps.Categoria) {
            this.GetApplicarionList();
        }

    }

    render() {
        if (this.state.listaAplicaciones.length == 0) {
            return <div className="alert alert-warning mt-2" role="alert">
                No se ha encontrado ninguna aplicación para esta categoria
            </div>
        } else {
            return (
                this.state.listaAplicaciones.map(item => {
                    return <div onClick={(e) => {this.props.OnSelectApp(item)}} key={item.id_aplicacion} className='col-6 col-sm-6 col-md-3 col-lg-2' data-bs-toggle="modal" data-bs-target="#appModal">
                        <div className="mx-auto card w-100 p-3 m-3 customHoverApp">
                            <img className="card-img-top" src={item.logo_aplicacion} alt="Card image cap" />
                            <div className="card-body p-0 text-start">
                                <p className="card-text mb-0 fw-bold">{item.nombre_aplicacion}</p>
                                <p className="card-text mb-0">{item.autor_aplicacion}</p>
                                <p className="card-text mb-0">
                                    <Raiting index={1} componente={"LW"} raiting={item.valoracion_aplicacion} />
                                    <Raiting index={2} componente={"LW"} raiting={item.valoracion_aplicacion} />
                                    <Raiting index={3} componente={"LW"} raiting={item.valoracion_aplicacion} />
                                    <Raiting index={4} componente={"LW"} raiting={item.valoracion_aplicacion} />
                                    <Raiting index={5} componente={"LW"} raiting={item.valoracion_aplicacion} />
                                </p>
                                <p className="card-text mb-0 fw-bold">{PrecioAplicacion(item.precio_aplicacion)}</p>
                            </div>
                        </div>
                    </div>
                })
            )
        }
    }
}

export default ListView