defmodule AmemoWeb.Editor do
  use AmemoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :val, 0)}
  end

  def handle_event("inc", _, socket) do
    {:noreply, update(socket, :val, &(&1 + 1))}
  end

  def handle_event("dec", _, socket) do
    {:noreply, update(socket, :val, &(&1 - 1))}
  end

  def render(assigns) do
    md = """
    ## Hello World!

    This is my text
    [link](https://mvp.fly.dev/)
    https://mvp.fly.dev/
    """


    ~H"""
    <div class="markdown">
    <%= Phoenix.HTML.raw(to_html(md)) %>

    <h1 class="text-4xl font-bold text-center"> The count is: <%= @val %> </h1>
     <.button phx-click="dec">-</.button>
     <.button phx-click="inc">+</.button>
     </div>
    """
  end

  def to_html(markdown) do
    markdown
    |> Earmark.as_html!(earmark_options())
    |> HtmlSanitizeEx.html5()
  end


  defp earmark_options() do
    %Earmark.Options{
      code_class_prefix: "lang-",
      smartypants: false
    }
  end
end
