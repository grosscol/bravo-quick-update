---
---

# Vite
- Written by creator of Vue.js
- Uses native ES modules
- Fast
- Rollup plugins
- Written by creator of Vue.js


## Configuration 
Still lots: cpyress.config.js, eslint.config.js, jsonconfig.json, package.json, vite.config.js, vitest.config.js, vue.config.js 

## Bundling
> Vite converts ESM dependencies with many internal modules into a single module to improve subsequent page load performance.

```js
import {debounce} from 'lodash'
```

Without pre-bundling the above import would result in 100's of http requests due to how the lodash package is structured.

## Processes Sources into Distributable
Produces a similar distributable files in `dist/`

