class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def foind
    model = self.class.to_s.split("sController")[0]
    eval("@#{model.downcase} = #{model}.find(params[:id])")
  end

end
