
class NuggetsController < ApplicationController

include NuggetsHelper

  def index
    @nuggets = Nugget.all
  end


def show
  @nugget = Nugget.find(params[:id])
end

def new
  @nugget = Nugget.new
end

def create
  @nugget = Nugget.new(nugget_params)
  # subject: params[:nugget][:subject],
  # topic: params[:nugget][:topic])
  @nugget.save
  flash.notice = "Nugget '#{@nugget.subject}' Created!"
  redirect_to nugget_path(@nugget)
end

def destroy
@nugget = Nugget.find(params[:id])
@nugget.destroy
flash.notice = "Nugget '#{@nugget.subject}' Deleted!"
redirect_to root_path
end


def edit
  @nugget = Nugget.find(params[:id])
end

def update
  @nugget = Nugget.find(params[:id])
  @nugget.update(nugget_params)
  flash.notice = "Nugget '#{@nugget.subject}' Updated!"
  redirect_to nugget_path(@nugget)
end

end
