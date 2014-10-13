

#### Resources

https://github.com/brianc/node-postgres


###Installing

Install postgres node package

	npm install pg


Import postgres library

	var pg = require('pg');


###Configure Connection

Declare database object, it represents the database in our code

	var db = {};

In order to connect to a db, we need to know three things:

- the database name
- the port its listening on
- the server address (IP or dns name)

```
db.config = {
    database: "library_example_app",
    port: 5432,
    host: "localhost"
};
```

### Connecting

The *connect()* function

```
db.connect = function(runAfterConnecting) {
    pg.connect(db.config, function(err, client, done){
        if (err) {
             console.error("OOOPS!!! SOMETHING WENT WRONG!", err);
        }
        runAfterConnecting(client);
        done();
    });
};
```


How to talk to databases?











###Client 

Your main interface point with the PostgreSQL server. Client is used to create & dispatch queries to Postgres.

