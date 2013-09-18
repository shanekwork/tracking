class SdelsController < ApplicationController
	def list
		@sdel = Sdel.all
	end

	def new
		@sdel = Sdel.new
	end

	def create
		#@sdel = Sdel.new(params[:sdel])
		@sdel = Sdel.where(:hashed_sdel => Digest::SHA1.hexdigest(params[:hashed_sdel]))
		if @sdel.save
			redirect_to(:action => 'list')
		else
			render('new')
		end
	end
end
