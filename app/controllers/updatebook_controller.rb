class UpdatebookController < ApplicationController

require 'httparty'
  def index
        

        id = params["ID"]
        author = params["Author"]
        desc = params["Description"]
        isbn = params["ISBN"]
        title = params["Title"]
        img = params["Image"]
        #params = { username: username,password:params[:username]}
        #@options = {params: params}
  
        url = "http://localhost:3001/api/v1/books/#{id}?Author=#{author}&Description=#{desc}&ISBN=#{isbn}&Title=#{title}&Image=#{img}"
        res =HTTParty.patch(url)

        if !id.present?
            
        else
            redirect_to bookdetails_index_path
        end

        


        
  end

  
end
