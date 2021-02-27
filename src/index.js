const express = require('express');

const symbolsRouter = require('./resources/symbols/symbols.route');

const app = express()
app.use(express.json())
app.use(express.urlencoded({ extended: true }))


const server = app.listen(3000, () => {
    console.log('Listening on port 3000');
})

app.get('/', (req, res) => {
    res.send('Hello from Index Page');
})

app.use('/symbols', symbolsRouter);

module.export = {
    app, 
    server
}