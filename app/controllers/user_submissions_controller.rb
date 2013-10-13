class UserSubmissionsController < ApplicationController
  def index
    offset = rand(ObjectivesScenariosMap.count)
    @map = ObjectivesScenariosMap.first(:offset => offset)
    @input = Input.new
    @test = Input.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @input }
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
