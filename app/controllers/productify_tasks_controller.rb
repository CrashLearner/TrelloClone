class ProductifyTasksController < ApplicationController
	before_action :set_productify_list
	before_action :set_productify_task, except: [:create]

	def create
		@productify_task = @productify_list.productify_tasks.create(productify_task_params)
		redirect_to @productify_list
	end

	def destroy	
		if @productify_task.destroy
			flash[:sucess] = "Task was deleted."
		else
			flash[:error] = "Task was not deleted."
		end
		redirect_to @productify_list
	end

	def complete
		@productify_task.update_attribute(:completed_at, Time.now)
		redirect_to @productify_list, notice: "Task Completed"
	end

	private

	def set_productify_list
		@productify_list = ProductifyList.find(params[:productify_list_id])
	end

	def set_productify_task
		@productify_task = @productify_list.productify_tasks.find(params[:id])
	end

	def productify_task_params
		params[:productify_task].permit(:content)
	end

end
