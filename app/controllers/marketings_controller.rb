class MarketingsController < ApplicationController

	def new
 		@marketing = Marketing.new
  end

	def create
		@marketing = Marketing.new(params[:marketing])
		@marketing.save
		flash[:notice] = "Marketing Leads Successfull Saved."
		render :action => "show"
	end
	
	def show
		@marketing = Marketing.find(params[:id])
	end
end
