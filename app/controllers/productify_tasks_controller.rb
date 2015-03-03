class ProductifyTasksController < ApplicationController
	before_action :set_productify_list

	def create
		@productify_task = @productify_list.productify_tasks.create(productify_task_params)
		redirect_to @productify_list
	end

	def destroy
		@productify_task = @productify_list.productify_tasks.find(params[:id])
		if @productify_task.destroy
			flash[:sucess] = "Task was deleted."
		else
			flash[:error] = "Task was not deleted."
		end
		redirect_to @productify_list
	end

	private

	def set_productify_list
		@productify_list = ProductifyList.find(params[:productify_list_id])
	end

	def productify_task_params
		params[:productify_task].permit(:content)
	end

end
