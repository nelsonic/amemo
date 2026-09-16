defmodule AmemoWeb.PageController do
  use AmemoWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
