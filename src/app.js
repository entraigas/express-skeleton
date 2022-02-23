const express = require("express");
const app = express();

// show the network requests on console
const morgan = require("morgan");
app.use(morgan("dev"));

// load routes
app.use(require("./routes/index"));

module.exports = app;
