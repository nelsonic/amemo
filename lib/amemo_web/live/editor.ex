defmodule AmemoWeb.Editor do
  use AmemoWeb, :live_view

  def mount(_params, _session, socket) do
    md = """
    # Hello World!

    Type some text ...
    [link](https://mvp.fly.dev/)
    https://mvp.fly.dev/
    """
    socket = assign(socket, :md, md)
    {:ok, assign(socket, :val, 0)}
  end

  def handle_event("render", %{"text" => text}, socket) do
    dbg(text)
    {:noreply, assign(socket, :md, text)}
  end

  def render(assigns) do
    ~H"""
    <form action="#" phx-change="render" phx-submit="render">
      <textarea rows="5"
        class="w-full my-2 py-1 px-1 text-slate-800 text-2xl
          bg-white bg-clip-padding
          resize-none hover:resize-y focus:resize-y
          transition ease-in-out
          border border-b border-slate-200
          focus:border-none focus:outline-none
          "
        name="text"
        id="text"
        phx-debounce="100"
        placeholder="Capture what is on your mind ..."
      >
        <%= @md %>
      </textarea>
    </form>

    <br /> <hr /> <br />

    <div class="markdown">
      <%= Phoenix.HTML.raw(to_html(String.trim(@md))) %>
    </div>
    """
  end

  def to_html(markdown) do
    markdown
    |> Earmark.as_html!()
    |> HtmlSanitizeEx.html5()
  end
end
