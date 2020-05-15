// var express = require("express");
// var app =express();
const status = require('http-status');
const userModel = require('@models/data.js');

module.exports={
test(req,res){
  res.json({status: true, message: 'Hello World',data});
}
}
// app("/",(req,res) =>{
//   res.send("Hello World");
// });

// app.listen(3000,() =>{
//   console.log('Server Losten At 3000')
// });
