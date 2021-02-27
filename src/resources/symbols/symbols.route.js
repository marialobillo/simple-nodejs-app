const express = require('express')

const fs = require('fs')


const symbolsRouter = express.Router()

symbolsRouter.get('/', (req, res) => {
    let rawdata = fs.readFileSync('symbols.json');
    let symbols = JSON.parse(rawdata);
    res.status(200).json(symbols)
})

module.exports = symbolsRouter