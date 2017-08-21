'use strict';

var _express = require('express');

var _express2 = _interopRequireDefault(_express);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var app = (0, _express2.default)();
var port = process.env.PORT || 8080;

app.get('*', function (req, res) {
  res.status(200).send({
    success: true
  });
});

app.listen(port, function (err) {
  if (err) console.error(err);else console.log('API listening on port ' + port);
});
