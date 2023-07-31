<div align="center">

# `amemo`

Adventures in `Markdown` / `Rich Text` Editing 
& Rendering in `Phoenix LiveView`

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/nelsonic/amemo/ci.yml?label=build&style=flat-square&branch=main)
[![codecov.io](https://img.shields.io/codecov/c/github/nelsonic/amemo/main.svg?style=flat-square)](http://codecov.io/github/nelsonic/amemo?branch=main)
[![Hex.pm](https://img.shields.io/hexpm/v/phoenix?color=brightgreen&style=flat-square)](https://hex.pm/packages/elixir_auth_google)
[![contributions welcome](https://img.shields.io/badge/feedback-welcome-brightgreen.svg?style=flat-square)](https://github.com/nelsonic/amemo/issues)
[![HitCount](https://hits.dwyl.com/nelsonic/amemo.svg)](https://hits.dwyl.com/nelsonic/amemo)

</div>

# Try it! [amemo.fly.dev](https://amemo.fly.dev/)

Input some random `Markdown` into the `<textarea>`

```md
# Hello World! 😊

Write something **bold**, _italic_ or ***both*** with a 
[link](https://mvp.fly.dev/)
and some code `dbg("hello")`.  
Pasting URLs directly works too: 
https://mvp.fly.dev

![iteles](https://avatars.githubusercontent.com/u/4185328?s=80&v=4)

+ Bullet Point
1. Ordered List
```

Watch it render to `HTML` _server-side_ in real-time!


# _Understand_ it!

If you want to _fully understand_ the `code`
in this mini-project,
please follow the `LiveView` Counter Tutorial:
[dwyl/phoenix-liveview-counter-tutorial](https://github.com/dwyl/phoenix-liveview-counter-tutorial)


# Run it on your `localhost`

```
git clone git@github.com:nelsonic/amemo.git && cd amemo
mix deps.get
mix s
```

Then open 
[`localhost:4000`](http://localhost:4000/)
in your fave browser
you should see something similar to the following:

![amemo-localhost](https://github.com/nelsonic/amemo/assets/194400/17400372-0722-4fa7-ab38-1dfd806cd530)


# Build Log

```
mix phx.new amemo --no-mailer --no-dashboard --no-gettext
```

_All_ the relevant code for this is contained in:
[`lib/amemo_web/live/editor.ex`](https://github.com/nelsonic/amemo/blob/dc19297783b4be3b6551caa6bd77fa23f7356db8/lib/amemo_web/live/editor.ex)

<!--
mix phx.gen.html Blog Post posts  title:string text:text person_id:integer status:integer
-->




<br />

# Previous Efforts/Explorations
## Implement Quill Rich Text Editor

I attempted to add the `quill` Rich Text Editor ...

Relevant links:
+ https://quilljs.com
+ https://quilljs.com/guides/why-quill
+ https://github.com/quilljs/quill

Open `lib/app_web/templates/post/form.html.eex`
and add Quill starter code:
https://quilljs.com/docs/quickstart

e.g: [lib/app_web/templates/post/form.html.eex#L8](https://github.com/nelsonic/amemo/blob/f2beaec249734530e5455f3d772f684db46d0830/lib/app_web/templates/post/form.html.eex#l8)

![quill-implemented](https://user-images.githubusercontent.com/194400/84235579-face0c00-aaed-11ea-918a-228012796e29.png)

It _kinda_ worked. But was not maintained so I scrapped it
[issues#64](https://github.com/nelsonic/amemo/issues/64)
in favour of starting from scratch with `LiveView`.