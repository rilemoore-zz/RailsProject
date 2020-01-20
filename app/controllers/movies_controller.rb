class MoviesController < ApplicationController
    before_action :find_movie, only: [:show, :edit, :update]
  
    def index
      @movies = Movie.all
    end
  
    def new
      @movie = Movie.new
    end
  
    def create
      @movie = Movie.create(movie_params)
      if @movie
        redirect_to movie_path(@movie)
      else
        render :new
      end
    end
  
    def show
      @movie = Movie.find(params[:id])
    end
  
    def edit
      @movie = Movie.find(params[:id])
    end
  
    def update
      @movie = Movie.find(params[:id])
      @movie.update(movie_params)
      if @movie.save
        redirect_to movie_path(@movie)
      else
        render :edit
      end
    end
  
    private
    def find_movie
      @movie = Movie.find_by(id: params[:id])
    end
  
    def movie_params
      params.require(:movie).permit(:title, :runtime)
    end
  end