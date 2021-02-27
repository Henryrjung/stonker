const path = require("path");
const express = require("express");
// const helmet = require("helmet");
// const cors = require("cors");
const session = require("express-session");
const cron = require("node-cron");
require("dotenv").config();

const db = require("./models");
const routes = require("./routes");
const passport = require("./config/passport");
const corsOptions = require("./config/cors.js");
const scheduledTasks = require("./config/cron");

const PORT = process.env.PORT || 3001;
const app = express();

// Define middleware here
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
// app.use(
//   helmet.contentSecurityPolicy({
//     directives: {
//       defaultSrc: ["'self'"],
//       frameSrc: ["'self'"],
//       childSrc: ["'self'"],
//       connectSrc: ["'self'"],
//       scriptSrc: [
//         "'self'",
//         "https://s3.tradingview.com/",
//         "https://s.tradingview.com/"
//       ],
//       styleSrc: [
//         "'self'",
//         "https://fonts.googleapis.com",
//       ],
//       fontSrc: ["'self'", "https://fonts.gstatic.com"],
//       imgSrc: ["'self'"],
//       baseUri: ["'self'"],
//     },
//   })
// );
app.use(
  session({
    secret: "process.env.SESSION_SECRET",
    resave: true,
    saveUninitialized: true,
  })
);
app.use(passport.initialize());
app.use(passport.session());
// app.use(cors(corsOptions));

// Serve up static assets (usually on heroku)
if (process.env.NODE_ENV === "production") {
  app.use(express.static(path.join(__dirname, "../client/build")));
}

// Add routes, API
app.use(routes);

// The "catchall" handler: for any request that doesn't
// match one above, send back React's index.html file.
// Serve up static assets (usually on heroku)
if (process.env.NODE_ENV === "production") {
  app.get("*", (_, res) => {
    res.sendFile(path.join(__dirname, "../client/build/index.html"));
  });
}

// Dynamically force schema refresh only for 'test'
const FORCE_SCHEMA = process.env.NODE_ENV === "test";

// Cron job call to check google trends.
// At 1 call every 30 seconds, we can check 2,880 stock symbols a day.
cron.schedule("*/30 * * * * *", scheduledTasks).start();

db.sequelize
  .authenticate()
  .then(() => {
    db.sequelize.sync({ force: FORCE_SCHEMA }).then(() => {
      app.listen(PORT, (err) => {
        if (err) throw err;
        console.log(
          `🌎 Server is Ready and Listening on http://localhost:${PORT}`
        ); // eslint-disable-line no-console
      });
    });
  })
  .catch(console.error); // eslint-disable-line no-console

module.exports = app;
