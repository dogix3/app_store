import React, { Component } from 'react';
import axios from 'axios'
export class SelectCategoria extends Component {
    constructor(props) {
        super(props)

        this.state = {
            listaCategorias: []
        }
    }
    GetCategoriesList = () => {
        axios.get("http://127.0.0.1:3000/api/categorias").then(resp => {
            return resp;
        }).then(response => {
            if (response.status == 200) {
                this.setState({
                    listaCategorias: response.data
                })
                if(response.data.length > 0){
                    this.props.OnChangeCategory(response.data[0].id_categoria)
                }
            } else {
                this.setState({
                    listaCategorias: [{ id_categoria: 0, nombre_categoria: "No hay catégorias" }]
                })
            }
            //return
        })
    }
    handleChange = e => {
        this.props.OnChangeCategory(e.target.value)
    };
    componentDidMount() {
        this.GetCategoriesList()
    }
    render() {
        return (
            <select onChange={this.handleChange} className="form-select mt-2" aria-label="Default select">
                {
                    this.state.listaCategorias.map(item => {
                        return <option key={item.id_categoria} value={item.id_categoria} >{item.nombre_categoria}</option>
                    })
                }
            </select>
        )
    }
}

export default SelectCategoria