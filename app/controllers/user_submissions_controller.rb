class UserSubmissionsController < ApplicationController
  def terms_and_conditions
  end

  def verify_terms_and_conditions
    if params[:verify]
      cookies[:terms_and_conditions] = true
      redirect_to index_path
    else
      cookies.delete(:terms_and_conditions)
    end
  end

  def index
    if cookies[:terms_and_conditions]
      offset = rand(ObjectivesScenariosMap.count)
      @map = ObjectivesScenariosMap.first(:offset => offset)
      @input = Input.new
      @test = Input.first

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @input }
      end
    else
      redirect_to terms_and_conditions_path
    end
  end

  def create_input
    @input = Input.new(params[:input])

    respond_to do |format|
      if @input.save
        format.html { redirect_to index_path, notice: 'Input was successfully saved.' }
      else
        format.html { redirect_to index_path }
        format.json { render json: @input.errors, status: :unprocessable_entity }
      end
    end
  end
end
