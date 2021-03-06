
const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const itemSchema = new Schema({
  name: String,
  createdAt: { type: Date, default: Date.now }
});

module.exports = mongoose.model('Items', itemSchema);
