// Importaciones de la librerias necesarias
const express = require('express');
const path = require('path');
const bodyparser = require('body-parser');
const cors = require('cors');
var fs = require('fs');

const app = express();
require('dotenv').config();

// -ROUTES
const categorias = require("./src/routes/categorias");
const comentarios = require("./src/routes/comentarios");
const aplicaciones = require("./src/routes/aplicaciones");

// Settings
app.set('port', process.env.PORT || 3000);

// Middlewares
app.use(express.json());

//Body-Parser para enviar formularios.
app.use(bodyparser.urlencoded({ limit: '50mb', extended: true, parameterLimit: 50000 }));
app.use(bodyparser.json({ limit: '50mb' }));
app.use(cors());

// Manejo de las Routes
app.use("/api/categorias", categorias);
app.use("/api/comentarios", comentarios);
app.use("/api/aplicaciones", aplicaciones);

app.use(express.static(path.join(__dirname, 'public')));

// Ruta base para utilizar el servicio
app.get("/api", function(req, res) {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('SERVIDOR APP STORE');
});

// Iniciar Servidor
app.listen(app.get('port'), () => {
    console.log('Servidor en el puerto', app.get('port'));
});