const express = require('express');
const config = require('./config');
const apiRouter = require('./routers/api');
const basicAuth = require('express-basic-auth');
const app = express();

app.use(basicAuth({
  users: { 'user': 'password' }
}));
app.use('/api', apiRouter);

const server = app.listen(config.port, () => {
  console.log(`Listening on port ${config.port}`);
});
