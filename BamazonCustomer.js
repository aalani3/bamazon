var mysql = require("mysql");
var inquirer = require("inquirer");


//the connection variable to sync with a MySQL database
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    user: "root",
    password: "Ameen-2018",
    database: "bamazon_db"
});

// establish connection
connection.connect(function (err) {
    if (err) throw err;

    loadProducts();
});

function loadProducts() {

    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;

        console.table(res);

        promptItems(res);
    });
}


function promptItems() {

    inquirer
        .prompt(
            {
                type: "input",
                name: "ProductId",
                message: "What is the item's Id you would you like to purchase?",
                validate: function (value) {
                    if (!isNaN(value) === false) {
                        return true;
                    }
                    return false;
                }
            }
        );

}

