const express = require("express")
const app = express()

const port = 3000

app.get('/', (req, res) => {
    res.send("This is first basic node JS app with Jenkins - Second changed made")
})

app.listen(port, () => {
    console.log("App is listening at http://localhost:" + port)
})