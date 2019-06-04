class WelcomeController < ApplicationController
  extend WelcomeHelper
  
  def index
    if params[:tag]
      @events = Event.tagged_with(params[:tag]).page params[:page]
    elsif params[:search] && params[:search] != ""
      @events = Event.search(params[:search]).page params[:page]
      @events_found = @events.count
      @places = Place.search(params[:search])
      @places_found = @places.count
    elsif params[:age]
      @events = Event.where(age_filter: params[:age]).page params[:page]
    else
      @events = Event.page params[:page]
    end
    @random_places = Place.order("RAND()").first(3)
  end

  def place_index
    @places = Place.all.page params[:page]
    @random_places = Place.order("RAND()").first(3)
  end

  def terms
    @places = Place.all.page params[:page]
    @random_places = Place.order("RAND()").first(3)
  end
end
