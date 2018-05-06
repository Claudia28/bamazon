var mysql = require("mysql"),
 inquirer = require("inquirer"),
 Table = require('cli-table'),
 colors = require("colors");
//create connection
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    checkUser()
})
    // run the start function after the connection is made to prompt the user
//     start();
//   });
function displayProducts(){
 var sql = "select item, product_name, price"
 connection.query(sql,function(err,result){
     if(err)console.log(err);

     


  // function which prompts the user for what action they should take
function start() {
    inquirer
      .prompt({
        name: "id",
        type: "rawlist",
        message: "what is item id?",
        choices: ["0001", "0002", "0003", "0004","0005",]
      })
      .then(function(answer) {
        // based on their answer, either call the bid or the post functions
        if (answer.postOrBid.toUpperCase() === "POST") {
          postAuction();
        }
        else {
          bidAuction();
        }
      });



      function displayProducts() {
	
        var sql = 'SELECT item, product_name, price FROM products'
    
        connection.query(sql, function(err, result){
    
            if(err) console.log(err)
    
            //creates a table for the information from the mysql database to be placed
            console.log('>>>>>>Products Available for Purchase<<<<<<'.yellow)
            var table = new Table({
                head: ['Item Id#', 'Product Name', 'Price'],
                chars: chars,
                colAligns: [null, null, 'right'],
                style: {
                    head: ['yellow'],
                    compact: false
                }
            })
    
            //loops through each item in the mysql database and pushes that information into a new row in the table
            
            for(var i = 0; i < result.length; i++){
                table.push([result[i].item, result[i].product_name, result[i].price])
            }
            //show the product info in tabular form
    
            console.log(table.toString())
            
            //determine what customer wants to do
            
            determineAction()
        })
    }






  
  //timeoutfunction?
  setTimeout(function(params) {
      if (typeof input !== 'number') {
          done('You need to provide a number');
          return;
          
      }

//       done(null,true);
//   },(300);
      
 
  // function which prompts the user for what action they should take
function start() {
    inquirer
      .prompt({
        name: "quantity",
        type: "name",
        message: "How many would you like to buy?",
        choices: ["1", 1,2,3]
      })
      .then(function(answer) {
        // based on their answer, either call the bid or the post functions
        if (answer.postOrBid.toUpperCase() === "POST") {
          postAuction();
        }
        else {
          bidAuction();
        };
    
