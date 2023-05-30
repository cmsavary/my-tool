class ToolsController < ApplicationController
  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    if @tool.save
      redirect_to tool_path(@tool)
    else
      render :new
    end
  end

  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :detail, :price)
  end
end
