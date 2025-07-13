const mysql = require('mysql2');
const express = require('express');

const app = express();

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'buku_tamu'
});

// Cek koneksi saat server dimulai
db.connect((err) => {
    if (err) {
        console.error('Database connection failed:', err);
        return;
    }
    console.log('Connected to database');
});

// Middleware agar database bisa diakses di routes
app.use((req, res, next) => {
    req.db = db;
    next();
});

app.use(express.urlencoded({ extended: true })); // Agar bisa membaca `req.body

app.get('/', (req, res) => {
    res.send('Server berjalan...');
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server berjalan di http://localhost:${PORT}`);  
});

