---
---

# Why Vite over Webpack?

- Happy Path
- Documentation
- Maintenance

## Vue Developer Recommendations

Migration of supporting libraries for Vue3

- New versions of Router, Devtools & test utils w/ Vue 3 support
- Build Toolchain: Vue CLI -> Vite
- State Management: Vuex -> Pinia
- IDE Support: Vetur -> Volar
- New command line TypeScript support: vue-tsc
- SSG: VuePress -> VitePress
- JSX: @vue/babel-preset-jsx -> @vue/babel-plugin-jsx

## Vue Documentation 

- Config examples use Vite.
- Deprecation of old tooling 
		> Vue CLI is the official webpack-based toolchain for Vue. It is now in maintenance mode..
- Testing examples rely on Vitest

## TypeScript Support

The Vite build chain makes using .ts less painful and error prone than Webpack.

No more untyped madness
```js
[] + [] === ""
[] + {} === Object
{} + [] === 0
{} + {} === NaN
```

## Typescript Advantages

- Static typing shows expected types of args and objects.
- Type errors detectable at compile time.
- Better debugging traces.
