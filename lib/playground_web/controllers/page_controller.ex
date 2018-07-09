defmodule PlaygroundWeb.PageController do
  use PlaygroundWeb, :controller

  def index(conn, _params) do
    json(conn, %{"message" => "Hello World!"})
  end
end
