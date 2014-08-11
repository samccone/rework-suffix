var rework = require("rework");
var suffix = require("./suffix");

module.exports = function(str, opts) {
  opts = opts || {};

  return rework(str)
  .use(function(node){return suffix(node, opts)})
  .toString();
}
