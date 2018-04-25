class TempDetailsController < ApplicationController
	def create 
		current_temp = params[:current_temp] || 0
		if TempDetail.create(current_time: DateTime.current, current_temp: current_temp)
			render json: { status: 200, message: "Your data has been saved" }
		else
			render json: { status: 401, message: "Your data somehow can't saved" }
		end
	end

	def index
		render json: TempDetail.all
	end
end