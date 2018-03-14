class ParksController < ApplicationController
  def index
    # called by the state view
  end

  def show
    # called by the park view
    park = Park.find_by(parkCode: params['parkCode'])

    render json: park

  end
end
