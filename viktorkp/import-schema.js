const fs = require('fs');
const mysql = require('mysql2/promise');
const path = require('path');

async function importSchema() {
    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        multipleStatements: true
    });

    try {
        // Create database if not exists
        await connection.query('CREATE DATABASE IF NOT EXISTS buku_tamu');
        await connection.query('USE buku_tamu');
        
        // Read and execute the SQL file
        const sql = fs.readFileSync(path.join(__dirname, 'tamu.sql'), 'utf8');
        await connection.query(sql);
        
        console.log('Database schema imported successfully!');
    } catch (error) {
        console.error('Error importing schema:', error);
    } finally {
        await connection.end();
    }
}

importSchema();
