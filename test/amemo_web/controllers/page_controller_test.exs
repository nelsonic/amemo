defmodule AmemoWeb.PageControllerTest do
  use AmemoWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "rendered below"
  end
end
