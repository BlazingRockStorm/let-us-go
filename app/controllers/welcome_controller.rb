class WelcomeController < ApplicationController
  extend WelcomeHelper
  def index
    if params[:tag]
      @events = Event.by_hidden_status().tagged_with(params[:tag])
    else
      @events = Event.by_hidden_status()
    end

    if params[:search]
      @events = Event.by_hidden_status().search(params[:search])
      @events_found = @events.count
      @places = Place.search(params[:search])
      @places_found = @places.count
    else
      @events = Event.by_hidden_status()
    end
  end

  def place_index
    @places = Place.all
  end
end
