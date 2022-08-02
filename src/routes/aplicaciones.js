const express = require('express');
const router = express.Router();
const db_generica = require('../database/database');

// servicio para obtener todas las aplicaciones
router.get('/', (req, res) => {

    try {
        const conn = db_generica.createServer();

        conn.connect();
        conn.query(`SELECT a.id_aplicacion,
                        a.codigo_aplicacion,
                        a.nombre_aplicacion,
                        a.descripcion_aplicacion,
                        a.precio_aplicacion,
                        a.autor_aplicacion,
                        a.logo_aplicacion,
                        a.imagen_aplicacion,
                        a.is_instalada_aplicacion,
                        a.id_categoria_aplicacion,
                        c.nombre_categoria,
                        (select round(avg(valoracion_comentario))
                        FROM tbl_comentarios
                        WHERE id_aplicacion_comentario = a.id_aplicacion) as valoracion_aplicacion
                    FROM tbl_aplicaciones as a INNER JOIN tbl_categoria c
                    ON id_categoria = id_categoria_aplicacion`,
            function (error, results, fields) {
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

// servicio para obtener aplicaciones en base a su categoria
router.get('/categoria/:id_categoria_aplicacion', (req, res) => {
    try {

        const { id_categoria_aplicacion } = req.params;
        const conn = db_generica.createServer();

        conn.connect();
        conn.query(`SELECT a.id_aplicacion,
                        a.codigo_aplicacion,
                        a.nombre_aplicacion,
                        a.descripcion_aplicacion,
                        a.precio_aplicacion,
                        a.autor_aplicacion,
                        a.logo_aplicacion,
                        a.imagen_aplicacion,
                        a.is_instalada_aplicacion,
                        a.id_categoria_aplicacion,
                        c.nombre_categoria,
                        (select round(avg(valoracion_comentario))
                        FROM tbl_comentarios
                        WHERE id_aplicacion_comentario = a.id_aplicacion) as valoracion_aplicacion
                    FROM tbl_aplicaciones as a INNER JOIN tbl_categoria c
                    ON id_categoria = id_categoria_aplicacion
                    WHERE id_categoria_aplicacion = ?`, [id_categoria_aplicacion],
            function (error, results, fields) {
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

// servicio para obtener las descargas de una aplicacion
router.get('/descargas/:id_aplicacion_descarga_aplicacion', (req, res) => {
    try {

        const { id_aplicacion_descarga_aplicacion } = req.params;
        const conn = db_generica.createServer();

        conn.connect();
        conn.query(`SELECT COUNT(id_descarga_aplicacion) AS descargas
                    FROM tbl_descargas_aplicaciones
                    WHERE id_aplicacion_descarga_aplicacion = ?`, [id_aplicacion_descarga_aplicacion],
            function (error, results, fields) {
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

// servicio para obtener las descargas de una aplicacion
router.put('/desinstalar/:id_aplicacion', (req, res) => {
    try {

        const { id_aplicacion } = req.params;
        const conn = db_generica.createServer();

        conn.connect();
        conn.query(`UPDATE tbl_aplicaciones
                    SET is_instalada_aplicacion = 0
                    WHERE id_aplicacion = ?`, [id_aplicacion],
            function (error, results, fields) {
                if (error) {
                    res.send(error);
                    throw error;
                }
                res.status(200).json({ code: "200", success: true, message: "Aplicación desinstalada correctamente" });
                conn.end();
            });
    } catch (error) {
        res.status(500).json({ code: "500", success: false, error: error });
    }
});

module.exports = router;