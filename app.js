const math = require('mathjs');
const express = require('express');
const bodyparse = require('body-parser');
const app = express();

// connecting to db
const client = require('./db');
client.connect();


// getting form value
app.use(bodyparse.urlencoded({ extended: true }));
app.set("view engine", "ejs");

app.get('', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});
app.post('/resl', (req, res) => {
    var num = req.body.num1;
    var result = math.evaluate(num).toString();
    res.send(result);
    client.query("Insert into calc values('" + num + "','" + result + "',current_timestamp)",
        (err, result) => {
            if (!err) {
                console.log('Inserted 1 Row!');
            }
            else {
                console.log(err);
            }
            // client.end();
        });
});


app.get('/hs', (req, res) => {
    client.query("Select * from calc ", (err, result) => {
        if (!err) {
            res.render('hs', { 'items': result.rows }
            );
            // client.end();
        }
        else {
            console.log(err);
        }
    })

});


app.listen(4000, (res) => {
    console.log('Connected at port 4000');
});