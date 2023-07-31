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

# Build Log

```
mix phx.new amemo --no-mailer --no-dashboard --no-gettext
```

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