const Pool = require('pg').Pool;
const pool = new Pool({
    user: 'apiadmin',
    host: 'localhost',
    database: 'users',
    password: '123',
    port: 5432
});

const insertTimestamp = async () => {
    pool.query(
        `INSERT INTO timestamps (created_at, is_updated)
        VALUES (current_timestamp, false)`, (err, result) => {
            if (err) {
                return console.error('Error executing query:', err.message);
            }
        }
    )
}

const updateTimestamp = async () => {
    pool.query(
        `UPDATE timestamps SET
        is_updated = true, updated_at = current_timestamp
        WHERE is_updated = false`, (err, result) => {
            if (err) {
                return console.error('Error executing query:', err.message);
            }
        }
    )
}

module.exports = {
    insertTimestamp,
    updateTimestamp,
}