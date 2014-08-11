# Rework Suffix

Suffix all of you css selectors with anything

    npm i rework-suffix


```js
rework(str)
  .use(function(node){return require('rework-suffix')(node, opts)})
```

Turns

```css
h1 body html div input[type="bam"] { color: red; }

/* into */
h1 body html div input[type="bam"].wow { color: red; }
```


# API

* Options

This tool takes a single option object with a single pair of

suffix: ".bam"
