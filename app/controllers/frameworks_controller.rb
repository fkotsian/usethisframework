class FrameworksController < ApplicationController
  def index
    @frameworks = Framework.all
  end
  
  def show
    @framework = Framework.find(params[:id])
  end
end
