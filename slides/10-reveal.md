---
---

# Reveal.js

The javascript framework that powers this presentation.

- Themed
- Navigation
- Browser Support

## Reveal Markup
Is built ontop of html.
```html
<div class="reveal">
	<div class="slides">
		<section>Slide 1</section>
		<section>Slide 2</section>
	</div>
</div>
```

## Markdown
Less boiler plate
```md
# Slide 1
# Slide 2
```

## Pandoc
> If you need to convert files from one markup format into another, pandoc is your swiss-army knife.

Command line tool that facilitates writing in markdown and producing other formats.

## Pandoc for .md -> .html
[Pandoc Templates](https://github.com/jgm/pandoc-templates) has a ready made template for Reveal.js
```sh
pandoc \
  -t revealjs \
  --template=pandoc-templates/default.revealjs \
  -o index.html slides/*.md
```

## Build System for Slides
1. Clone base [slides repo](https://grosscol.github.io/slides-template) into new project
1. Write .md files in slides dir
2. Run build script (pandoc)
3. Commit and push to github.

## Converting to PDF
Using node.js package, [decktape](https://github.com/astefanutti/decktape), after presentation has been built:
```sh
decktape reveal index.html presentation.pdf
```

## Project layout
```txt
├── build_slides.sh
├── index.html
├── pandoc-templates/
│   └── default.revealjs
├── reveal.js/
└── slides/
    ├── 01-intro.md
    ├── 10-middle.md
    └── 20-end.md
```

