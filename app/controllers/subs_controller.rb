class SubsController < ApplicationController
  def show
  @sub = Sub.find(params[:id])
end
end
