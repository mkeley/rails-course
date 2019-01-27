class CoursesController < ApplicationController
    #CRUD
	# send back form to create
	def new
	end
	# create course
	def create
		course = Course.new
		course.name = params[:name]
		course.location = params[:location]
		course.description = params[:description]
		course.save
		redirect_to '/courses'
	end
	

# list all courses
	def index
		@courses = Course.all
	
	end
	# send back form to edit
    def edit
	    @course = Course.find(params[:id])
	end
	# update course and students view
    def update
        course = Course.find(params[:id])
		course.name = params[:name]
		course.location = params[:location]
		course.description = params[:description]
		course.save
		redirect_to '/courses'

	end
	# destroys table
    def destroy
	    course = Course.find(params[:id])
	    course.destroy
	    redirect_to '/courses'
	end

end
