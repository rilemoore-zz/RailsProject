class TheatresController < ApplicationController
  
    def show
      @theatre = Theatre.find(params[:id])
    end
  
    def index
      @theatres = Theatre.all
    end
  
    def new
      @theatre = Theatre.new
    end

    def create
      @theatre = Theatre.new(theatre_params)
      if @theatre.save!
        redirect_to theatre_path(@theatre)  
      else
        render :new
      end
    end

    def edit
      @theatre = Theatre.find(params[:id])
    end
  
    def update
      @theatre = Theatre.find(params[:id])
      @theatre.update(theatre_params)
      if @theatre.save
        redirect_to theatre_path(@theatre)
      else
        render :edit
      end
    end

    private
    def theatre_params
      params.require(:theatre).permit(:movie_id, :capacity, movie_attributes: [:id, :title, :runtime])
    end

  end