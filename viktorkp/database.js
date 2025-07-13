const mysql = require('mysql2/promise');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'buku_tamu',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

// Initialize database and create table if not exists
async function initializeDatabase() {
    let connection;
    try {
        connection = await pool.getConnection();
        console.log('Connected to MySQL database');
        
        // Create database if not exists
        await connection.query(`CREATE DATABASE IF NOT EXISTS buku_tamu`);
        await connection.query(`USE buku_tamu`);
        
        // Create table if not exists
        await connection.query(`
            CREATE TABLE IF NOT EXISTS tamu (
                id INT AUTO_INCREMENT PRIMARY KEY,
                pilih_kategori VARCHAR(50),
                nama VARCHAR(100) NOT NULL,
                instansi VARCHAR(100),
                nomor_hp_telepon VARCHAR(20),
                biro_tujuan VARCHAR(100),
                alamat TEXT,
                keperluan TEXT,
                tanggal DATE,
                waktu TIME,
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
            )
        `);
        
        console.log('Database and table are ready');
    } catch (err) {
        console.error('Database initialization failed:', err);
    } finally {
        if (connection) connection.release();
    }
}

// Initialize the database when this module is loaded
initializeDatabase();

module.exports = pool;
