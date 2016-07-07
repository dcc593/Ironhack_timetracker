class TimeEntriesController < ApplicationController
	def index
		@my_project=Project.find(params[:project_id])
		@my_entries=@my_project.time_entries

		render "index"#we are rendering the view (html page) so that is why we name the same html document 
		#as the method name
	end

	def new
		@my_project=Project.find(params[:project_id])
		@my_entry=@my_project.time_entries.new

		render "new"#we are rendering the view (html page) so that is why we name the same html document 
		#as the method name
	end

	def create
		@my_project=Project.find(params[:project_id])

		@my_entry=@my_project.time_entries.new(entry_params)
		# :hours => params[:time_entry][:hours],
		# :minutes => params[:time_entry][:minutes],
		# :date => params[:time_entry][:date],
		# :comments => params[:time_entry][:comments]

		if @my_entry.save
			redirect_to "/projects/#{@my_project.id}/time_entries"

		else
			render "new"
		end
	end

	def edit
		@my_project=Project.find params[:project_id]
		@my_entry=@my_project.time_entries.find params[:id]

		render "edit" #we are rendering the view (html page) so that is why we name the same html document 
		#as the method name
	end

	def update
		@my_project= Project.find_by(id: params[:project_id])
		@my_entry= @my_project.time_entries.find_by(id: params[:id])

					# :hours => params[:time_entry][:hours],
					# :minutes => params[:time_entry][:minutes],
					# :date => params[:time_entry][:date],
					# :comments => params[:time_entry][:comments]
			#is the same thing as next line but the long version
		if @my_entry.update(entry_params)
		redirect_to action: "index", controller: "time_entries",
			project_id: @my_project.id
		else
			render "edit"
		end
	end

	private
	def entry_params
		params.require(:time_entry).permit(:hours,:minutes,:date,:comments)
	end
end