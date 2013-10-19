class AdminController < ApplicationController
  before_filter :authenticate_admin!

  def index
  	@inputs = Input.includes({:objectives_scenarios_map => 
  		                     [:objective, {:scenario => :environment}]}).
  	                order(["environments.name ASC",
  	                	   "objectives.name ASC",
  	                	   "scenarios.name ASC",
  	                	   "inputs.created_at DESC"]).page(params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @environments }
    end
  end
end
