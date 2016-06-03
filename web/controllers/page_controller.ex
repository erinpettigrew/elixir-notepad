defmodule Taskmaster.PageController do
  use Taskmaster.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
