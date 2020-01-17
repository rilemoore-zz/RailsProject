class TheatresController < ApplicationController
    before_action :require_login
  
    def create
      theatre = Theatre.create(cinema_id: params[:cinema_id], movie_id: params[:movie_id])
      if theatre

      else
        
      end
    end
  end