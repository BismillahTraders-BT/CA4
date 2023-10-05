const express = require("express");
const bodyParser = require("body-parser");
const port = 3001;

const app = express()
app.use(bodyParser.urlencoded({extended:true}));
app.use(express.static("public"));

app.get("/", function(req,res){
    res.sendFile(__dirname + "/index.html");
})

app.post("/", function(req,res){
    console.log("User InputD Data: ", req.body.fname, req.body.lname, req.body.email);
    res.sendFile(__dirname + "/index.html");
});

app.listen(port,function(){
    console.log(`Server is running on port ${port}`);
})