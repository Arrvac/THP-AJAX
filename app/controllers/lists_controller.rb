class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    @list = List.create(list_params)

    respond_to do |format|
      format.html { redirect_to lists_path }
      format.js { }
    end
  end

  def destroy
    @list = find_list

    respond_to do |format|
      format.html { redirect_to lists_path }
      format.js { }
    end
    
    @list.delete
  end

  private

  def list_params
    params.permit(:content)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
