const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// GET /
app.get('/', (req, res) => {
  res.send('Welcome to the home page!');
});

// GET /api/health
app.get('/api/health', (req, res) => {
  res.json({ status: 'OK', uptime: process.uptime() });
});

// GET /api/info
app.get('/api/info', (req, res) => {
  res.json({ 
    nodeEnv: process.env.NODE_ENV || 'development',
    versions: process.versions,
    platform: process.platform
  });
});

// GET /api/time
app.get('/api/time', (req, res) => {
  res.json({ time: new Date().toISOString() });
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
