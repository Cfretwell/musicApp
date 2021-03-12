class BandsController < ApplicationController

    def index 
        @bands = Band.all 
        render :index
    end

    def create 
        @band = Band.new(band_params)

        if @band.save 
            redirect_to band_url(@band.id)
            # render json: @band
        else
            flash.now[:errors] = @band.errors.full_message
            render :new
        end

    end

    def edit
        @band = Band.find(params[:id])
        render :edit
    end 

    def new
        @band = Band.new 
        render :new
    end

    def show 
        @band = Band.find(params[:id])
        render :show
    end

    def update 
        @band = Band.find(params[:id])

        if @band.update_attributes(band_params)
            redirect_to band_url(@band.id)
        else
            flash.now[:errors] = @band.errors.full_message
            render :edit
        end
        
    end

    def destroy 
        @band = Band.find(params[:id])

        if @band.destroy
            redirect_to bands_url
        else
            flash.now[:errors] = @band.errors.full_message
        end
    end

    private 

    def band_params
        params.require(:band).permit(:name)
    end


end