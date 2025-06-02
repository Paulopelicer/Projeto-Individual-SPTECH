var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");

router.post("/pontos", function (req, res) {
    quizController.fazerQuiz(req, res);
});

module.exports = router;