var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});
router.get("/bdafrica/:idusuario", function (req, res) {
    medidaController.buscarKpi1(req, res);
});
router.get("/pontuacao/:idusuario", function (req, res) {
    medidaController.buscarKpi2(req, res);
});


module.exports = router;