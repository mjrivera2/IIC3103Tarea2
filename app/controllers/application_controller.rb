class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  respond_to :json


def buscar
  @tags = HTTParty.get('https://api.instagram.com/v1/tags/'+ params[:tag] +'/media/recent?access_token=9994244.1fb234f.8893dfbb48d840aab8ea4b3e92be20e7')
  if(@tags != nil)
    render status: 200, json: @tags["data"]
  else
    render status: 404
  end
end


  #Metodo para retornar Json
  def self.respond_to(*mimes)
    include ActionController::RespondWith::ClassMethods
  end
end
