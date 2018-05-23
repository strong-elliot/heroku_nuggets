
class NuggetsController < ApplicationController

  def index
    @nuggets = Nugget.all
  end


def show
  @nugget = Nugget.find(params[:id])
end

end
