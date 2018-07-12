defmodule ShadowServerWeb.Resolvers.Posts do
  def photos(_, _, _) do
    {:ok, ShadowServer.Posts.list_photos()}
  end

  def photo(_, %{id: id}, _) do
    {:ok, ShadowServer.Posts.get_photo!(id)}
  end
end
