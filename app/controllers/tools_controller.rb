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
    if params[:query].present?
      sql_subquery = "name ILIKE :query"
      @tools = Tool.where(sql_subquery, query: "%#{params[:query]}%")
    else
      @tools = Tool.all
    end
    @markers = @tools.geocoded.map do |tool|
      {
        lat: tool.latitude,
        lng: tool.longitude
      }
    end
  end




  def show
    @tool = Tool.find(params[:id])
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :detail, :price, photos: [])
  end
end
