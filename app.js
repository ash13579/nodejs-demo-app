const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello, World! This is a simple Node.js app deployed with GitHub Actions by ASH');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});