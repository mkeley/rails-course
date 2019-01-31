class StudentsController < ApplicationController

	def new
		@students = Student.new
	end
	# create student
	def create
		student = Student.new
		student.first_name = params[:first_name]
		student.last_name = params[:last_name]
		student.picture = params[:picture]
		student.course_id = params[:course_id]
		student.save
		redirect_to '/students'
	end    
    
    
    # list all students
	def index
		@students = Student.all
	
	end
	
		# send back form to edit
    def edit
	    @students = Student.find(params[:id])
	end
	
		# update students view
    def update
        student = Student.find(params[:id])
		student.first_name = params[:first_name]
		student.last_name = params[:last_name]
		student.picture = params[:picture]
		student.course_id = params[:course_id]
		student.save
		redirect_to '/students'

	end
end
