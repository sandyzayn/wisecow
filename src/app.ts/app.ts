import express from 'express';

const app = express();
const PORT = process.env.PORT || 4499;

app.get('/', (req, res) => {
    res.send('Hello from WiseCow App!');
});

app.listen(PORT, '0.0.0.0', () => {
    console.log(`Server running on port ${PORT}`);
});