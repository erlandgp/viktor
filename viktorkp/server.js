const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const guestRoutes = require('./routes/guestbook');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('public'));
app.set('view engine', 'ejs');

// Gunakan rute buku tamu
app.use('/', guestRoutes);

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server berjalan di http://localhost:${PORT}`);
});
