const express = require('express');
const fs = require('fs');
const app = express();
const port = 3000;

// Read the content of the index.html file
const htmlContent = fs.readFileSync('index.html', 'utf-8');

// Define a route for the root URL
app.get('/', (req, res) => {
  res.send(htmlContent);
});

// Start the server and listen on the specified port
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
