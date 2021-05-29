class StickersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @sticker = Sticker.all
  end

  def new
    @sticker = Sticker.new
  end

  def create
    @sticker = Sticker.new(sticker_params)       
      if @sticker.save   
         redirect_to stickers_path, notice: "Successfully uploaded."   
      else   
         render "new"   
      end   
  end

  def destroy
    @sticker = Sticker.find(params[:id])   
      @sticker.destroy   
      redirect_to stickers_path, notice:  "Successfully deleted."
  end

  def edit
    @sticker = Sticker.find(params[:id])
  end

  private   
    def sticker_params   
      params.require(:sticker).permit(:category, :image)   
end  
end
