class Api::V1::MemesController < ApplicationController

  def index
    @memes = Meme.all
    render json: @memes
  end

  def show
    @meme = Meme.find(params[:id])
    render json: @meme
  end

  def update
    @meme = Meme.find(params[:id])
    @meme.update(meme_params)
    if @meme.save
      render json: @meme
    else
      render json: { errors: @meme.errors.full_messages }, status: 422
    end
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      render json: @meme
    else
      render json: { errors: @meme.errors.full_messages }, status: 422
    end
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy
  end

  private

  def meme_params
    params.require(:meme).permit(:id, :title, :image_url, :text, :rating)
  end

end
