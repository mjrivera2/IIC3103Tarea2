class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  respond_to :json



  #Metodo para retornar Json
  def self.respond_to(*mimes)
    include ActionController::RespondWith::ClassMethods
  end
end
