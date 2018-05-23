
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
  redirect_to nugget_path(@nugget)
end

end
