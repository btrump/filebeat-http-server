const express = require('express');
const bodyParser = require('body-parser');
const router = express.Router();

router.post('/', bodyParser.json({}), (req, res, next) => {
  console.log("[STATUS 200]: " + req.body.message);
  res.status(200).send(req.body.message);
});

module.exports = router;
