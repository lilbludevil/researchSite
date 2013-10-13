class AdminController < ApplicationController
  before_filter :authenticate_admin!

  def index
  	@environments = Environment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @environments }
    end
  end
end
