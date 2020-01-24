class CinemasController < ApplicationController
    def show
      @cinema = Cinema.find(params[:id])

    end
  
    def index
      @cinemas = Cinema.all
    end
  
    def new
      @cinema = Cinema.new
      @theatres = @cinema.theatres.build
      @movie = @theatres.build_movie
    end
  
    def create
      @cinema = Cinema.new(cinema_params)
      if @cinema.save
        flash[:message] = "#{@cinema.name} has been created"
        redirect_to cinema_path(@cinema)  
      else
        render :new
      end
    end
  
    def edit
      @cinema = Cinema.find(params[:id])
    end
  
    def update
      @cinema = Cinema.find(params[:id])
      @cinema.update(cinema_params)
      if @cinema.save!
        redirect_to cinema_path(@cinema)
      else
        render :edit
      end
    end

    private
    def cinema_params
      params.require(:cinema).permit(:id, :name, :num_theatres, theatres_attributes: [:id, :capacity, :movie_id], movies_attributes: [:id, :title, :runtime])
    end
  end