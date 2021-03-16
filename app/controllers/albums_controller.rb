class AlbumsController < ApplicationController

    def create 

    end

    def edit 
    end

    def show 

    end

    def update 

    end

    def destroy 

    end

    def new
        @album = Album.new()
        @band = Band.find(params[:band_id])
        render :new
    
    end




end