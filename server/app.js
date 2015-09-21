var express = require('express')
var db = require('./db')
var session = require('express-session');
var morgan = require('morgan');
var bodyParser = require('body-parser');

app.use(express.static(__dirname + '/../client'));
app.use(morgan('dev'));
// app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
app.use(session({secret:'fartmonster'}));

//Router Code
var apiRouter = express.Router();
app.use('/api', apiRouter)

require('./routes/users.js')(apiRouter);
require('./routes/sites.js')(apiRouter);
require('./routes/products.js')(apiRouter);

db.sync().then(function() {
  app.listen(3000);
})
