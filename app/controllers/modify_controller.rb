class ModifyController < ApplicationController
  def modify_director

    @dir_id = params.fetch("director_id")
    
    @dir_name = params.fetch("query_name")
    @dir_dob = params.fetch("query_dob")
    @dir_bio = params.fetch("query_bio")
    @dir_img = params.fetch("query_image")
    @dir_x = Director.where({:id => @dir_id}).first

    @dir_x.name = "#{@dir_name}"
    @dir_x.dob = "#{@dir_dob}"
    @dir_x.bio = "#{@dir_bio}"
    @dir_x.image = "#{@dir_img}"

    @dir_x.save

    redirect_to("/director/#{@dir_id}")

  end

  def modify_movie

    @mov_id = params.fetch("movie_id")

    @mov_title = params.fetch("query_title")
    @mov_year = params.fetch("query_year")
    @mov_time = params.fetch("query_duration")
    @mov_desc = params.fetch("query_description")
    @mov_img = params.fetch("query_image")
    @mov_dir = params.fetch("query_director_id")
    
    @mov_x = Movie.where({:id => @mov_id}).first

    @mov_x.title = "#{@mov_title}"
    @mov_x.year = "#{@mov_year}"
    @mov_x.duration = "#{@mov_time}"
    @mov_x.description = "#{@mov_desc}"
    @mov_x.image = "#{@mov_img}"
    @mov_x.director_id = "#{@mov_dir}"

    @mov_x.save

    redirect_to("/movies/#{@mov_id}")

  end

  def modify_actor

    @act_id = params.fetch("actor_id")

    @act_name = params.fetch("query_name")
    @act_dob = params.fetch("query_dob")
    @act_bio = params.fetch("query_bio")
    @act_img = params.fetch("query_image")

    @act_x = Actor.where({:id => @act_id}).first

    @act_x.name = "#{@act_name}"
    @act_x.dob = "#{@act_dob}"
    @act_x.bio = "#{@act_bio}"
    @act_x.image = "#{@act_img}"

    @act_x.save

    redirect_to("/actors/#{@act_id}")

  end

end
