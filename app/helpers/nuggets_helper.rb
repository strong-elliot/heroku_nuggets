module NuggetsHelper
  def nugget_params
    params.require(:nugget).permit(:subject, :topic, :tidbit)
  end

end
