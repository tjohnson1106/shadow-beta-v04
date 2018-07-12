defmodule ShadowServerWeb.Schema do
  use Absinthe.Schema

  alias ShadowServerWeb.Resolvers

  import_types(__MODULE__.PostsTypes)

  query do
    @desc "Get lists of photos"
    field :photos, list_of(:photo) do
      resolve(&Resolvers.Posts.photos/3)
    end
  end
end
