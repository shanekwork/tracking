class SordsController < ApplicationController
	before_filter :authenticate_user!

	def index
		list
		render('list')
	end

	def list
		@sord = Sord.all
	end

	def show
		@sord = Sord.find(params[:id])
	end

	def new
		@sord = Sord.new
	end

	def create
		@sord = Sord.new(params[:sord])
		if @sord.save
			flash[:notice] = "SORD Created"
			redirect_to(:action => 'list')
		else
			render('new')
		end
	end

	def edit
		@sord = Sord.find(params[:id])
	end

	def update
		@sord = Sord.find(params[:id])
		if @sord.update_attributes(params[:sord])
			flash[:notice] = "SORD Updated"
			redirect_to(:action => 'show', :id => @sord.id)
		else
			render('edit')
		end
	end

	def delete
		@sord = Sord.find(params[:id])
	end

	def destroy
		Sord.find(params[:id]).destroy
		flash[:notice] = "SORD Deleted"
		redirect_to(:action => 'list')
	end

end
