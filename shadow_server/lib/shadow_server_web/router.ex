defmodule ShadowServerWeb.Router do
  use ShadowServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug,
    schema: ShadowServerWeb.Schema

    if Mix.env == :dev do
      forward "/graphiql", Absinthe.Plug.GraphiQl,
      schema: ShadowServerWeb.Schema


    end
  end
end
