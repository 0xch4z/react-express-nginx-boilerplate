import express from 'express';

const app = express();
const port = process.env.PORT || 8080;

app.get('*', (req, res) => {
  res.status(200).send({
    success: true
  });
});

app.listen(port, (err) => {
  if (err) console.error(err)
  else console.log(`API listening on port ${port}`);  
});
