class SdelsController < ApplicationController
	before_filter :authenticate_user!

	def index
		list
		render('list')
	end

	def list
		@sdel = Sdel.all
	end

	def show
		@sdel = Sdel.find(params[:id])
	end

	def new
		@sdel = Sdel.new
	end

	def create
		@sdel = Sdel.new(params[:sdel])
		#@sdel = Sdel.where(:hashed_sdel => Digest::SHA1.hexdigest(params[:hashed_sdel])).first
		if @sdel.save
			redirect_to(:action => 'list')
		else
			render('new')
		end
	end

	def edit
		@sdel = Sdel.find(params[:id])
	end

	def update
		@sdel = Sdel.find(params[:id])
		if @sdel.update_attributes(params[:sdel])
			flash[:notice] = "SDEL Updated"
			redirect_to(:action => 'show', :id => @sdel.id)
		else
			render('edit')
		end
	end

	def delete
		@sdel = Sdel.find(params[:id])
	end

	def destroy
		Sdel.find(params[:id]).destroy
		flash[:notice] = "SDEL Deleted"
		redirect_to(:action => 'list')
	end

end
