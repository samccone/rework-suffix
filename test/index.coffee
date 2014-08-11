fs        = require "fs"
chai      = require "chai"
path      = require "path"
suffixer  = require "../"

chai.should();

describe "prefixing selectors", ->
  it "should suffix all the selectors", ->
    input     = fs.readFileSync(path.join(__dirname, "fixtures/simple.css"), "utf8");
    expected  = fs.readFileSync(path.join(__dirname, "fixtures/simple-expected.css"), "utf8");

    suffixer(input,{suffix: ".bkr"}).replace(/\n/gm, "")
    .should.eql(expected.replace(/\n/gm, ""))

  it "should suffix all the complex selectors", ->
    input     = fs.readFileSync(path.join(__dirname, "fixtures/complex.css"), "utf8");
    expected  = fs.readFileSync(path.join(__dirname, "fixtures/complex-expected.css"), "utf8");

    suffixer(input,{suffix: ".bkr"}).replace(/\n/gm, "")
    .should.eql(expected.replace(/\n/gm, ""))
