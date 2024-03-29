class ProjectsController < ApplicationController
	def index
   		 @projects_array = Project.order(created_at: "desc")
                             .limit(10)

    	render "index"
		# @projects=Project.last_created_projects
	end
	def new
		@my_project=Project.new
		render "new"
	end
	def show
		@my_project=Project.find(params[:id])

		render "show"
	end
	def create
		@my_project=Project.new(:name => params[:project][:name], :description => params[:project][:description])
		@my_project.save

		redirect_to "/projects/#{@my_project.id}"
	end
end
