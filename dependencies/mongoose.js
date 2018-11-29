const mongoose = require('mongoose');
mongoose.Promise = Promise;
const { mongoUri } = require('../config');

return mongoose.connect(mongoUri || null)
.catch( e => {
  console.error('Failed connecting to mongo!')
  console.error(e);
  process.exit(1);
});

module.exports = {};