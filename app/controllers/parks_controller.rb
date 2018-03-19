class ParksController < ApplicationController
  def index
    # called by the state view
  end

  def show
    # called by the park view
    park = Park.find_by(parkCode: params['parkCode'])

    render json: park
  end

  def frontPage
    articles = RestClient.get "https://developer.nps.gov/api/v1/articles?limit=7&api_key=R7qhvnG45YlTSKHI5IrQsqDsMjR0VRaqZPTmVZky"
    render json: articles
  end

  def state
    url = "https://developer.nps.gov/api/v1/parks?stateCode=" + params['state'] + "&limit=10000&fields=images&api_key=R7qhvnG45YlTSKHI5IrQsqDsMjR0VRaqZPTmVZky"
    state_parks = RestClient.get url
    render json: state_parks
  end

end
