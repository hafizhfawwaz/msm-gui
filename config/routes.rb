Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })

  post("/insert_director", {:controller => "add", :action => "add_director"})
  post("/insert_movie", {:controller => "add", :action => "add_movie"})
  post("/insert_actor", {:controller => "add", :action => "add_actor"})

  post("/delete_actor/:path_id", {:controller => "delete", :action => "delete_actor"})
  post("/delete_director/:path_id", {:controller => "delete", :action => "delete_director"})
  post("/delete_movie/:path_id", {:controller => "delete", :action => "delete_movie"})

  post("modify_actor/:path_id", {:controller => "modify", :action => "modify_actor"})
  post("modify_director/:path_id", {:controller => "modify", :action => "modify_director"})
  post("modify_movie/:path_id", {:controller => "modify", :action => "modify_movie"})
end
