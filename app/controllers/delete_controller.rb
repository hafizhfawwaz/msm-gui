class DeleteController < ApplicationController
  def delete_director

    @dir_id = params.fetch("path_id")
    @dir_y = Director.where({:id => @dir_id}).at(0)

    @dir_y.destroy

    redirect_to("/directors")

  end

  def delete_movie

    @mov_id = params.fetch("path_id")
    @mov_y = Movie.where({:id => @mov_id}).at(0)

    @mov_y.destroy

    redirect_to("/movies")

  end

  def delete_actor

    @act_id = params.fetch("path_id")
    @act_y = Actor.where({:id => @act_id}).at(0)

    @act_y.destroy

    redirect_to("/actors")

  end

end
