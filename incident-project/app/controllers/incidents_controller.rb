class IncidentsController < ApplicationController
    	def new
		@incidents = Incident.new
	end
	# create incident
	def create
		incident = Incident.new
		incident.ticket_number = params[:ticket_number]
		incident.issue = params[:issue]
		incident.target_date = params[:target_date]
	    incident.user_it_code =params[:target_date]
	    incidents.save
		redirect_to '/incidents'
	end

	def index
		@incidents = Incident.all
	
	end
	
	# send back form to edit
    def edit
	    @incidents = Incident.find(params[:id])
        incident = incident.find(params[:id])
		incident.ticket_number = params[:ticket_number]
		incident.target_date = params[:target_date]
		incident.user_it_code = params[:user_it_code]
		incident.save
		redirect_to '/incidents'
	end
	
	# update incident and students view
    def update
        incident = incident.find(params[:id])
		incident.ticket_number = params[:ticket_number]
		incident.target_date = params[:target_date]
		incident.user_it_code = params[:user_it_code]
		incident.save
		redirect_to '/incidents'
	end
	
	#def show
	#	@incidents = incident.new(params[:id])
#	end
	
	# destroys table
    def destroy
	    incident = incident.find(params[:id])
	    incident.destroy
	    redirect_to '/incidents'
	end
	
	
	
end

