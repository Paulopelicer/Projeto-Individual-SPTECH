var database = require("../database/config");

function buscarUltimasMedidas(limite_linhas) {

    var instrucaoSql = `select nome, porcentagem_acerto from quiz join usuarios on fkidusuario = idusuario order by porcentagem_acerto desc limit ${limite_linhas};`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarKpi1(idusuario) {

    var instrucaoSql = `select count(fkidusuario) as total from quiz join usuarios on idusuario = fkidusuario where fkidusuario = ${idusuario};`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarKpi2(idusuario) {

    var instrucaoSql = `select max(quantidade_acerto) as 'quantidadedeAcertos' from quiz where fkidusuario = ${idusuario};`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarUltimasMedidas,
    buscarKpi1,
    buscarKpi2,
}
