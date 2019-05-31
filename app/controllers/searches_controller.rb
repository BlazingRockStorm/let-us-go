class SearchesController < ApplicationController
  def new
    @search = Search.new
    @random_places = Place.order("RAND()").first(3)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @random_places = Place.order("RAND()").first(3)
  end

  private
  def search_params
    params.require(:search).permit :name, :status, :sex, :min_age, :max_age, :min_adult_price, :max_adult_price, 
      :min_child_price, :max_child_price, tag_ids: []
  end
end
