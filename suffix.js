module.exports = function(root, opts) {
  opts.suffix = opts.suffix || "";

  root.rules.forEach(function(node) {
    node.selectors = node.selectors.map(function(selector) {
      return selector+opts.suffix;
    });
  });
}
