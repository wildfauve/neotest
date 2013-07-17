class TestsController < ApplicationController
  
  def index
    @tests = Test.all
  end
  
  def new
    @test = Test.new
  end
  
  def create
    @test = Test.create_it(params[:test])
    respond_to do |format|
      if @test.valid?
        format.html { redirect_to tests_path }
        format.json
      else
        format.html { render action: "new" }
        format.json
      end
    end
  end
end
