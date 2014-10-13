"use strict"
// 1. Connect to postgres and 
//    get a client object

// 2. Use the client to make a 
//  a query to our DATABASE

var pg = require('pg');

var db = {};

db.config = {
    database: "library_example_app",
    port: 5432,
    host: "localhost"
};

pg.connect(db.config,function(err, client, done){

        if (err) {
             console.error("OOOPS!!! SOMETHING WENT WRONG!", err);
             done();
             return;
        }

        client.query("SELECT * FROM BOOKS", function(err, result){
              result.rows.forEach(function(row){
                  console.log('id: %d title: %s and author: %s',
                    row.id, 
                    row.title, 
                    row.author);
                });
              done();
        });
});

pg.end();



// db.connect = function(runAfterConnecting) {
//     pg.connect(db.config, function(err, client, done){
//         if (err) {
//              console.error("OOOPS!!! SOMETHING WENT WRONG!", err);
//         }
//         runAfterConnecting(client);
//         done();
//     });
// };

// db.query = function(statement, params, callback){
//   db.connect(function(client){
//     client.query(statement, params, callback);
//   })
// }


// Connect to the DATABASE
/*
db.query("SELECT * FROM person;", function(err, res){
    if (err) {
        console.log("OOOPS!", err);
    } 
    console.log(res.rows);
});
*/

// function Book(params){
//     this.title = params.title;
//     this.author = params.author;
//     this.id = params.id;
// }

// Book.all = function(somethingToDoAfter){
//     db.query("SELECT * FROM books", function(err, res){
//         if (err) {
//             console.log(err);
//         }
//         var results = [];
//         res.rows.forEach(function(params){
//           results.push(new Book(params));
//         });
//         somethingToDoAfter(results);
//     })
// };


// Book.all(function(books){
//     console.log("The books are:", books);
// });



// db.query("INSERT INTO books (title, author) VALUES ($1, $2) RETURNING *",
// ["The Great Gatsby", "Fitzgerald"], function(err, result){
//   console.log('id: %d title: %s and author: %s',
//     result.rows[0].id, 
//     result.rows[0].title, 
//     result.rows[0].author);

//   // console.log(result.rows);
// });
























