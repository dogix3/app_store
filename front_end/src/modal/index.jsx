import React, { Component } from 'react'
import { PrecioAplicacion, FormatDateTime } from '../services/servicios'
import { Raiting } from '../raiting'
import { Coment } from '../coment'
import axios from 'axios'

export class Modal extends Component {
    constructor(props) {
        super(props)

        this.state = {
            listaComentarios: []
        }
    }
    componentDidUpdate(prevProps) {
        if (this.props.DatosAplicacion.id_aplicacion !== prevProps.DatosAplicacion.id_aplicacion) {
            this.GetComments(this.props.DatosAplicacion.id_aplicacion)
        }
        //this.GetComments(this.props.DatosAplicacion.id_aplicacion)
    }

    RenderInstallButton = (esInstalada) => {
        if (esInstalada) {
            return <button onClick={(e) => { this.UninstallApp(this.props.DatosAplicacion.id_aplicacion) }} type="button" className="btn btn-danger">Eliminar</button>
        } else {
            return <button type="button" className="btn btn-success">Instalar</button>
        }
    }

    UninstallApp = (idAplicacion) => {
        axios.put(`http://127.0.0.1:3000/api/aplicaciones/desinstalar/${idAplicacion}`).then(resp => {
            return resp;
        }).then(response => {
            if (response.status == 200) {
                alert(response.data.message)
            } else {
                alert(response.data.message)
            }
        })
    }

    GetComments = (idAplicacion) => {
        axios.get(`http://127.0.0.1:3000/api/comentarios/${idAplicacion}`).then(resp => {
            return resp;
        }).then(response => {
            if (response.status == 200) {
                this.setState({
                    listaComentarios: response.data
                })
            } else {
                this.setState({
                    listaComentarios: <div>Se ha presentado un problema al obtener comentarios</div>
                })
            }
        })
    }

    render() {
        return (
            <div className="modal fade" id="appModal" tabIndex="-1" aria-labelledby="appModalLabel" aria-hidden="true">
                <div className="modal-dialog">
                    <div className="modal-content">
                        <div className="modal-body">
                            <div className='row'>
                                <img src={this.props.DatosAplicacion.imagen_aplicacion} alt="" />
                            </div>
                            <hr />
                            <div className='row'>
                                <div className='col-sm-4'>
                                    <img className='w-75' src={this.props.DatosAplicacion.logo_aplicacion} alt="" />
                                </div>
                                <div className='col-sm-8 text-start'>
                                    <p className='mb-0 fs-4 fw-bold'>{this.props.DatosAplicacion.nombre_aplicacion}</p>
                                    <p className='mb-0 autorTitulo'>{this.props.DatosAplicacion.autor_aplicacion}</p>
                                    <p className='mb-0 fs-6'>{this.props.DatosAplicacion.descripcion_aplicacion}</p>
                                    <p className='mb-0 fs-5 fw-bold'>{PrecioAplicacion(this.props.DatosAplicacion.precio_aplicacion)}</p>
                                </div>
                            </div>
                            <hr />
                            <div className='row'>
                                <div className="col-sm-12">
                                    <p className="card-text mb-0">
                                        <Raiting index={1} componente={"MD"} raiting={this.props.DatosAplicacion.valoracion_aplicacion} />
                                        <Raiting index={2} componente={"MD"} raiting={this.props.DatosAplicacion.valoracion_aplicacion} />
                                        <Raiting index={3} componente={"MD"} raiting={this.props.DatosAplicacion.valoracion_aplicacion} />
                                        <Raiting index={4} componente={"MD"} raiting={this.props.DatosAplicacion.valoracion_aplicacion} />
                                        <Raiting index={5} componente={"MD"} raiting={this.props.DatosAplicacion.valoracion_aplicacion} />
                                        <span className='ms-2'>
                                            {this.props.DatosAplicacion.valoracion_aplicacion}
                                        </span>
                                    </p>
                                </div>
                            </div>
                            <div className='commentsSection'>
                                {
                                    this.state.listaComentarios.map(item => {
                                        return (
                                            <div className='row'>
                                                <div className="col-sm-12">
                                                    <hr />
                                                </div>
                                                <div className='col-sm-2'>
                                                    <img className='userImg' src={"/user-img.png"} alt="" />
                                                </div>
                                                <div className='col-sm-10 text-start'>
                                                    <p className='mb-0 fw-bold'>{item.autor_comentario}</p>
                                                    <p className='mb-0'>
                                                        <span className='me-2'>
                                                            <Raiting index={1} componente={"LW"} raiting={item.valoracion_comentario} />
                                                            <Raiting index={2} componente={"LW"} raiting={item.valoracion_comentario} />
                                                            <Raiting index={3} componente={"LW"} raiting={item.valoracion_comentario} />
                                                            <Raiting index={4} componente={"LW"} raiting={item.valoracion_comentario} />
                                                            <Raiting index={5} componente={"LW"} raiting={item.valoracion_comentario} />
                                                        </span>
                                                        <span>{FormatDateTime(item.fecha_comentario)}</span>
                                                    </p>
                                                    <p className='mb-0'>{item.texto_comentario}</p>
                                                </div>
                                            </div>
                                        )
                                    })
                                }
                            </div>
                            <div className='col-sm-12'>
                                <hr />
                                <Coment getComments={this.GetComments} idAplicacion={this.props.DatosAplicacion.id_aplicacion} />
                            </div>
                        </div>
                        <div className="modal-footer">
                            <button type="button" className="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            {
                                this.RenderInstallButton(this.props.DatosAplicacion.is_instalada_aplicacion)
                            }
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Modal