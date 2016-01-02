class FrameworksController < ApplicationController
  def index
    @frameworks = Framework.all
  end
  
  def show
    @framework = Framework.find(params[:id])
  end
  
  def new
    @new_framework = Framework.new
    5.times { @new_framework.items << Item.new(framework: @new_framework) }
  end
  
  def create
    framework = Framework.new(framework_params)
    framework.items.delete {Item.new}
    if framework.save
      redirect_to framework
    else
      redirect_to :index
    end
  end
  
  
  private
  
  def framework_params
    params.require(:framework).permit(:id, :name, :description, :items, :author, :link_to_original)
  end
end
