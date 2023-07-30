# `amemo`

A Rich Text Editor Journey

# Build Log

```
mix phx.new amemo --no-mailer --no-dashboard --no-gettext
mix phx.gen.html Blog Post posts  title:string text:text person_id:integer status:integer
```

## Implement Quill Rich Text Editor

Relevant links:
+ https://quilljs.com
+ https://quilljs.com/guides/why-quill
+ https://github.com/quilljs/quill



Open `lib/app_web/templates/post/form.html.eex`
and add Quill starter code:
https://quilljs.com/docs/quickstart

e.g: https://github.com/nelsonic/amemo/blob/master/lib/app_web/templates/post/form.html.eex#L8

Run the server:

```
mix phx.server
```

Visit: http://localhost:4000/posts/new

![quill-implemented](https://user-images.githubusercontent.com/194400/84235579-face0c00-aaed-11ea-918a-228012796e29.png)
