class DeleteController < ApplicationController
  def delete_director

    @dir_id = params.fetch("path_id")
    @dir_x = Director.where({:id => @dir_id}).first

    @dir_x.destroy

    redirect_to("/directors")

  end

  def delete_movie

    @mov_id = params.fetch("path_id")
    @mov_x = Movie.where({:id => @mov_id}).first

    @mov_x.destroy

    redirect_to("/movies")

  end

  def delete_actor

    @act_id = params.fetch("path_id")
    @act_x = Actor.where({:id => @act_id}).first

    @act_x.destroy

    redirect_to("/actors")

  end

end
