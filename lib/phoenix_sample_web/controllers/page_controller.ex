defmodule PhoenixSampleWeb.PageController do
  use PhoenixSampleWeb, :controller
  @version Mix.Project.config[:version]
  def health(conn, params) do
    text(conn, Poison.encode!%{
      State:  "ok",
      Nodes: Node.list ++ [node],
      Date: DateTime.utc_now(),
      Version: @version
      })
  end

  def loaderio(conn, params) do
    text(conn, "loaderio-d2f80ab6b2ea3bea0ccd54b4d0c057a9")
  end
end
