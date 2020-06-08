# `amemo`

A Rich Text Editor Journey



```
mix phx.new app
mix phx.gen.html Blog Post posts  title:string text:text person_id:integer status:integer
```

Open `lib/app_web/templates/post/form.html.eex`
and add Quill starter code:
https://quilljs.com/docs/quickstart

e.g: https://github.com/nelsonic/amemo/blob/master/lib/app_web/templates/post/form.html.eex#L8

Run the server:

```
mix phx.server
```
