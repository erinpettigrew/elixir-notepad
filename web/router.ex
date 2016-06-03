defmodule Taskmaster.Router do
  use Taskmaster.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Taskmaster do
    pipe_through :browser # Use the default browser stack

    get "/", TaskController, :index
    resources "/tasks", TaskController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Taskmaster do
  #   pipe_through :api
  # end
end
