var quizModel = require("../models/quizModel");

function fazerQuiz(req, res) {
    var quiz = req.body.pontosServer;
    var id = req.body.idServer;
    if (id == undefined) {
        res.status(400).send("Seu id está undefined!");
    }
    else {
        quizModel.fazerQuiz(id, quiz) // chama o model select pra ver se o usuário já fez o quiz ou nao
            .then(
                function (resultado) {
                    console.log(resultado);
                }
            ).catch(
                function (erro) { // reza pra nao dar erro
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