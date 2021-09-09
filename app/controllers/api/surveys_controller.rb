class Api::SurveysController < ApplicationController

  def index
    render json: Api.surveys
  end
end
