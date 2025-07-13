const express = require('express');
const router = express.Router();
const path = require('path');
const db = require(path.join('..', 'database'));
const flash = require('connect-flash');

router.get('/', (req, res) => {
    res.render('index'); // Halaman Form Input
});

router.post('/submit', async (req, res) => {
    const { category, name, institution, contact, bureau, alamat, purpose, date } = req.body;
    
    try {
        const [result] = await db.execute(
            'INSERT INTO tamu (pilih_kategori, nama, instansi, nomor_hp_telepon, biro_tujuan, alamat, keperluan, tanggal) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
            [category, name, institution, contact, bureau, alamat, purpose, date]
        );
        res.redirect('/guests');
    } catch (err) {
        console.error('Error saving data:', err);
        res.status(500).send('Error saving data');
    }
});

router.get('/guests', async (req, res) => {
    try {
        const [rows] = await db.query('SELECT * FROM tamu ORDER BY id DESC');
        res.render('guest-list', { data: rows, messages: {} });
    } catch (err) {
        console.error('Error fetching guests:', err);
        res.status(500).send('Error fetching guest data');
    }
});

module.exports = router;
