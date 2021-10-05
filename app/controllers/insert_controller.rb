class InsertController < ApplicationController

  def index
  end


  def create
    
    #pass = params_user[:password]
    uri = URI('http://localhost:3001/api/v1/books')
    res = Net::HTTP.post_form(uri,Author: params["Author"],Description: params["Description"],ISBN: params["ISBN"],Title: params["Title"],Image: params["Image"])
    #puts data.body

    redirect_to bookdetails_index_path
  end

  private
  def params_user
    params.permit(:Author,:Description,:ISBN,:Title,:Image)
  end
end
