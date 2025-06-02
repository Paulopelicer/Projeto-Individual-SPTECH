var quizModel = require("../models/quizModel");

function fazerQuiz(req, res) {
    var acertos = req.body.acertosServer;
    var erros = req.body.errosServer;
    var porcentagem = req.body.percentualServer;
    var id = req.body.idServer;
    if (id == undefined) {
        res.status(400).send("Seu id está undefined!");
    }
    else {
        quizModel.fazerQuiz(id, erros, acertos, porcentagem) 
            .then(
                function (resultado) {
                    console.log(resultado);
                }
            ).catch(
                function (erro) { 
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o select! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    fazerQuiz,
}