---
---
# Webpack
- Bundles separate .js files together
- Plugins for doing build jobs:
	- Minifies javascript
	- Handling assets (images and .css)
- Similar to CMake

## Configuration 
Lots of it: package.json, vue.config.js, babel.config.js

```json
"name": "bravue",
"scripts": { "build": "vue-cli-service build" },
"dependencies": { "@coreui/vue": "^4.4.0", ... },
"eslintConfig": { "extends": ["plugin:vue/vue3-essential"] }
```

```js
process.env.VUE_APP_VERSION = require('./package.json').version
module.exports = {
  publicPath: '/',
  pages: {...}
```

## Processes Sources
Consolidate src files and dependencies
```txt
src/
├── assets/
├── components/
└── pages/

19 directories, 95 files
```

```txt
node_modules/

5145 directories, 40573 files
```

## Results
src + dependencies (784Mb) -> dist bundle (12Mb)

```txt
dist/
├── 404.html
├── about.html
├── css/
├── favicon.ico
├── favicon.svg
├── img/
├── index.html
└── js/
```

