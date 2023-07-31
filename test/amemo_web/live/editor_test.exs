defmodule AmemoWeb.EditorTest do
  use AmemoWeb.ConnCase
  import Phoenix.LiveViewTest

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "GitHub"
  end

  # Ref: https://hexdocs.pm/phoenix_live_view/Phoenix.LiveViewTest.html#render_change/1
  test "Update the text", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/")

    assert view
           |> element("form")
           |> render_change(%{text: "Hello Changed!"}) =~ "Changed!"
  end
end
