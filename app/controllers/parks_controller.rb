

class ParksController < ApplicationController
  def index
    # called by the state view
  end

  def show
    api_key = ENV["api_key"]
    # called by the park view
    park_url = "https://developer.nps.gov/api/v1/parks?parkCode=" + params['parkCode'] + "&limit=10000&fields=images&api_key=" + api_key
    events_url = "https://developer.nps.gov/api/v1/events?parkCode=" + params['parkCode'] + "&limit=10&api_key=" + api_key
    places_url = "https://developer.nps.gov/api/v1/places?parkCode=" + params['parkCode'] + "&limit=10&api_key=" + api_key

    park = RestClient.get park_url
    events = RestClient.get events_urlcd
    places = RestClient.get places_url

    result = {park: JSON.parse(park), events: JSON.parse(events), places: JSON.parse(places)}

    render json: result
  end

  def frontPage
    api_key = ENV["api_key"]
    articles = RestClient.get "https://developer.nps.gov/api/v1/articles?limit=7&api_key=" + api_key
    render json: articles
  end

  def state
    api_key = ENV["api_key"]
    url = "https://developer.nps.gov/api/v1/parks?stateCode=" + params['state'] + "&limit=10000&fields=images&api_key=" + api_key
    state_parks = RestClient.get url
    render json: state_parks
  end

  def search
    api_key = ENV["api_key"]
    url = "https://developer.nps.gov/api/v1/parks?q=" + params['search'] + "&limit=10&fields=images&api_key=" + api_key
    state_parks = RestClient.get url
    render json: state_parks
  end

end
