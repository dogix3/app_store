
export const PrecioAplicacion = (precio) => {
    if (precio < 0.5) {
        return "FREE"
    } else {
        return `$${precio}`
    }
}

export const StartColor = (componente, valoracion) => {
    if (componente == "LW") {
        return "starColor"
    }if (componente == "MD") {
        if (valoracion >= 3) {
            return "greenStar"
        }else{
            return "redStar"
        }
    } else {
        return "starColor"
    }
}

export const FormatDateTime = (fecha) => {
    var today = new Date(fecha);
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();

    return dd + '/' + mm + '/' + yyyy;
}