const express = require('express');
const router = express.Router();

const apiRoutes = require('./api');
const htmlRoutes = require("./html");

router.use('/', htmlRoutes);
router.use('/api', apiRoutes);

module.exports = router