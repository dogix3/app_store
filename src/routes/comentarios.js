const express = require('express');
const router = express.Router();
const db_generica = require('../database/database');

// obtener comentarios por aplicacion
router.get('/:id_aplicacion', (req, res) => {
    try {
        const { id_aplicacion } = req.params;
        const conn = db_generica.createServer();

        conn.connect();
        conn.query(`SELECT id_comentario,
                        texto_comentario,
                        autor_comentario,
                        fecha_comentario,
                        valoracion_comentario
                    FROM tbl_comentarios WHERE id_aplicacion_comentario = ?`, [id_aplicacion], function (error, results, fields) {
            if (error) {
                res.send(error);
                throw error;
            }
            res.status(200).json(results);
            conn.end();
        });
    } catch (error) {
        res.status(500).json({ code: "500", success: false, error: error });
    }
});

// servicio para agregar comentarios por aplicacion
router.post('/', (req, res) => {
    try {
        // Definición de variables
        const { texto, autor, valoracion, aplicacion } = req.body;

        const conn = db_generica.createServer();
        conn.connect();

        conn.query(`INSERT INTO tbl_comentarios
                        (texto_comentario, autor_comentario, fecha_comentario, valoracion_comentario, id_aplicacion_comentario)
                    VALUES (?,?,NOW(),?,?)`, [texto, autor, valoracion, aplicacion],
            function (error, results, fields) {
                if (error) {
                    res.send(error);
                    return;
                }
                res.status(200).json({ code: "200", success: true, message: "Comentario registrado exitosamente!" });
                conn.end();
            });
    } catch (error) {
        res.status(500).json({ code: "500", success: false, error: error });
    }
});

module.exports = router;