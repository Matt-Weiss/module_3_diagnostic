class SearchController < ApplicationController
  def index
    render locals: {
      fuels: FuelFacade.new(params[:q])
    }
  end
end
