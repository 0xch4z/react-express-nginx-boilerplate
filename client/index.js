const express = require('express');
const next = require('next');

const devProxy = {
  '/api': {
    target: 'http://localhost:8080/',
    pathRewrite: {'^/api' : '/'},
    changeOrigin: true,
  },
};

const port = process.env.PORT || 3000;
const dev = process.env.NODE_ENV !== 'production';
const app = next({ dir: '.', dev });

const handle = app.getRequestHandler();

app.prepare().then(() => {

  const server = express();

  // mount proxy
  if (dev && devProxy) {
    const proxyMiddleware = require('http-proxy-middleware');
    Object.keys(devProxy).forEach(function(context) {
      server.use(proxyMiddleware(context, devProxy[context]));
    });
  }

  // mount next views
  server.all('*', (req, res) => handle(req, res));

  server.listen(port, err => {
    if (err) {
      throw err;
    }
    console.log(`Client listening on ${port}`);
  });

}).catch((err) => {
  console.error(err);
});