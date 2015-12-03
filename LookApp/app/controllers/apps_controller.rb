class AppsController < ApplicationController
	def index
		if params[:search]
			@apps = App.search(params[:search]).order("created_at DESC")
		else
			@apps = App.order("created_at DESC")
		end
	end

	def show
		@app = App.find(params[:id])
	end

	def aboutus
		@apps = App.all
	end

	def new
		@app = App.new
	end

	def edit
		@app = App.find(params[:id])
	end

	def cart
		@chest_items = App.all
	end

	def search 
		if params[:search]
			@apps = App.search(params[:search]).order("created_at DESC")
		else
			@apps = App.order("created_at DESC")
		end
	end

	def create
		@app = App.new(app_params)

		if @app.save
			redirect_to @app
		else
			render 'new'
		end
	end

	def update
		@app = App.find(params[:id])

		if @app.update(app_params)
			redirect_to @app
		else
			render 'edit'
		end
	end

	def destroy
		@app = App.find(params[:id])
		@app.destroy

		redirect_to apps_path
	end

	private
		def app_params
			params.require(:app).permit(:appID, :name, :developer, :platform, :version, :price, :link)
		end



end
