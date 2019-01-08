class Api::RegionsController < ApplicationController
  def index
    @regions = Region.all

    render json: @regions.map do |region|
      {
        region: region
      }
    end
  end
end
