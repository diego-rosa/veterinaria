const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const handlebars = require('express-handlebars');
const app = express();
const urlencodeParser = bodyParser.urlencoded({extended:false});

//Conexão com o banco de dados
const sql = mysql.createConnection({
    host:'localhost',
    user: 'root',
    password: '',
    database: 'veterinaria'
});

sql.query("use veterinaria");
app.use('/css',express.static('css'));
app.use('/js',express.static('js'));

//Template engine
app.engine("handlebars",handlebars({defaultLayout:'main'}));
app.set('view engine' , 'handlebars');

//Rotas
app.get('/', function(req, res){
    res.render('index');
});

app.get("/inserir",function(req,res){
    res.render("inserir");
});

app.get("/select/:id?",function(req,res){
    if(!req.params.id) {
        sql.query("select * from tbl_medicamentos order by id asc",function(err,results,fields){
            res.render('select',{data:results});
        });
    }else{
        sql.query("select * from tbl_medicamentos where id=? order by id asc",[req.params.id],function(err,results,fields){
            res.render('select',{data:results});
        });            
    }
});

app.post("/controllerForm",urlencodeParser,function(req, res){
    sql.query("insert into tbl_medicamentos values (?,?,?)", [req.body.id,req.body.name,req.body.descricao]);
    res.render('controllerForm');
});

app.get('/deletar/:id' , function(req, res){
    sql.query("delete from tbl_medicamentos where id=?" , [req.params.id]);
    res.render('deletar');
});
/*
app.get("/update/:id" , function(req, res){
    sql.query("select * from tbl_medicamentos where id=?",[req.params.id],function(err,results,fields){
        res.render('update',{id:req.params.id,name:results[0].name,descricao:results[0].descricao});
    });
    
});

app.post("/controllerUpdate",urlencodeParser,function(req, res){
    sql.query("update tbl_medicamentos set name=?,descricao=? where id=?" , [req.body.name,req.body.descricao,req.body.id]);
    res.render('controllerUpdate');
});
*/

//Servidor ouvindo
app.listen(3000,function(req, res){
    console.log('Servidor esta rodando em http://localhost:3000/');
});

