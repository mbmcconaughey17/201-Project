class RatingsController < ApplicationController
	def create
		@app = App.find(params[:app_id])
		@rating = @app.ratings.create(rating_params)
		redirect_to app_path(@app)
	end

	private
		def rating_params
			params.require(:rating).permit(:body)
		end

end
