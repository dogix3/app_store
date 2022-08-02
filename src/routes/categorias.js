const express = require('express');
const router = express.Router();
const db_generica = require('../database/database');

// Servicio para obtener todas las categorias
router.get('/', (req, res) => {

    try {
        const conn = db_generica.createServer();

        conn.connect();
        conn.query(`SELECT id_categoria, nombre_categoria FROM tbl_categoria ORDER BY nombre_categoria ASC`, function(error, results, fields) {
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
// servicio para obtener categorias por ID
router.get('/:id', (req, res) => {
    try {
        const {id} = req.params;
        const conn = db_generica.createServer();

        conn.connect();
        conn.query(`SELECT id_categoria, nombre_categoria FROM tbl_categoria WHERE id_categoria = ?`, [id] , function(error, results, fields) {
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

module.exports = router;