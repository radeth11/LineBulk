let express = require('express');

let app = express();
const PORT = 7777;

app.use(express.static('public'));

app.get('/', function(req, res) {
  res.sendFile('index.html');
});

app.listen(PORT, () => console.log('running'));
