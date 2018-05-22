
class NuggetsController < ApplicationController

  def index
    @nuggets = Nugget.all
  end

end
