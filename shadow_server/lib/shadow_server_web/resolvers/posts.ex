defmodule ShadowServerWeb.Resolvers.Posts do
   def photos(_, _, _) do
      {:ok, ShadowServer.Posts.list_photos}

   end
    
end