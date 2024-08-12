Rails.application.routes.draw do

  # Route for the Homepage

  get("/", { :controller => "users", :action => "index"})


  # Routes for the Comment like resource:

  # CREATE
  post("/insert_comment_like", { :controller => "comment_likes", :action => "create" })
          
  # READ
  get("/comment_likes", { :controller => "comment_likes", :action => "index" })
  
  get("/comment_likes/:path_id", { :controller => "comment_likes", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment_like/:path_id", { :controller => "comment_likes", :action => "update" })
  
  # DELETE
  get("/delete_comment_like/:path_id", { :controller => "comment_likes", :action => "destroy" })

  #------------------------------

  # Routes for the Post like resource:

  # CREATE
  post("/insert_post_like", { :controller => "post_likes", :action => "create" })
          
  # READ
  get("/post_likes", { :controller => "post_likes", :action => "index" })
  
  get("/post_likes/:path_id", { :controller => "post_likes", :action => "show" })
  
  # UPDATE
  
  post("/modify_post_like/:path_id", { :controller => "post_likes", :action => "update" })
  
  # DELETE
  get("/delete_post_like/:path_id", { :controller => "post_likes", :action => "destroy" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Post resource:

  # CREATE
  post("/insert_post", { :controller => "posts", :action => "create" })
          
  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  
  get("/posts/:path_id", { :controller => "posts", :action => "show" })
  
  # UPDATE
  
  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })
  
  # DELETE
  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  # Routes for the User resource:

  # CREATE
  post("/insert_user", { :controller => "users", :action => "create" })
          
  # READ
  get("/users", { :controller => "users", :action => "index" })
  
  get("/users/:path_id", { :controller => "users", :action => "show" })
  
  # UPDATE
  
  post("/modify_user/:path_id", { :controller => "users", :action => "update" })
  
  # DELETE
  get("/delete_user/:path_id", { :controller => "users", :action => "destroy" })

  #------------------------------

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
