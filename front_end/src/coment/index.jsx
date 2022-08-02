import React, { Component } from 'react'
import { StartComment } from './startComment'
import axios from 'axios'

export class Coment extends Component {
    constructor(props) {
        super(props)

        this.state = {
            userRaiting: 1,
            userComment: "",
            userName: ""
        }
    }

    OnClickStar = (raiting) => {
        this.setState(
            {
                userRaiting: raiting
            }
        )
    }

    componentDidUpdate(prevProps, prevState) {
        if (prevState.userRaiting == this.state.userRaiting && prevProps.idAplicacion != this.props.idAplicacion) {
            this.setState(
                {
                    userRaiting: 1
                }
            )
        }
    }

    SendComment = (e) => {
        axios.post(`http://127.0.0.1:3000/api/comentarios/`,
            {
                texto: this.state.userComment,
                autor: this.state.userName,
                valoracion: this.state.userRaiting,
                aplicacion: this.props.idAplicacion
            }).then(resp => {
                return resp;
            }).then(response => {
                if (response.status == 200) {
                    alert(response.data.message);
                    this.setState({
                        userRaiting: 1,
                        userComment: "",
                        userName: ""
                    });
                    this.props.getComments(this.props.idAplicacion)
                } else {
                    alert(response.data.message)
                }
            })
    }

    HandleChange = e => {
        this.setState({
            [e.target.name]: e.target.value
        })
    }

    render() {
        return (
            <div>
                <div className="mb-3 text-start">
                    <label htmlFor="autorComentario" className="form-label">Nombre de usuario:</label>
                    <input name='userName' value={this.state.userName} onChange={this.HandleChange} type="email" className="form-control" id="autorComentario" placeholder="Usuario" />
                </div>
                <div className="mb-3 text-start">
                    <label htmlFor="areaComentario" className="form-label">Valoracion</label>
                    <p>
                        <StartComment index={1} userRaiting={this.state.userRaiting} onClickStar={this.OnClickStar} />
                        <StartComment index={2} userRaiting={this.state.userRaiting} onClickStar={this.OnClickStar} />
                        <StartComment index={3} userRaiting={this.state.userRaiting} onClickStar={this.OnClickStar} />
                        <StartComment index={4} userRaiting={this.state.userRaiting} onClickStar={this.OnClickStar} />
                        <StartComment index={5} userRaiting={this.state.userRaiting} onClickStar={this.OnClickStar} />
                    </p>
                </div>
                <div className="mb-3 text-start">
                    <label htmlFor="areaComentario" className="form-label">Comentario</label>
                    <textarea name='userComment' value={this.state.userComment} onChange={this.HandleChange} className="form-control" id="areaComentario" rows="3"></textarea>
                </div>
                <div className='mb-3 text-start'>
                    <button onClick={this.SendComment} type="button" className="btn btn-primary">Aceptar</button>
                </div>
            </div>
        )
    }
}

export default Coment