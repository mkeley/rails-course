class ContactsController < ApplicationController
    #define Contacts method as
    def index
        @contacts = Contact.all
    end

# sinatra 
#get '/contacts' do
#    code to load contacts
#    @contacts = Contact.all
#    erb :contacts
#end
    def new
    end
    
    def create
        contact = Contact.new
        contact.first_name = params[:first_name]
        contact.last_name = params[:last_name]
        contact.phone = params[:phone]
        contact.email = params[:email]
        contact.address = params[:address]
        contact.city = params[:city]
        contact.state = params[:state]
        contact.zip = params[:zip]	
        contact.save
        
        redirect_to '/contacts'
        
    end
    
    def update
        @contact = Contact.find_by(id: params[id])
        @contact.first_name = params [:first_name]
        @contact.last_name = params [:last_name]
        @contact.phone = params [:phone]
        @contact.email = params [:phone]
        @contact.address = params [:address]
        @contact.city = params [:city]
        @contact.state = params [state]
        @contact.zip = params [:zip]
        @contact.save
        
        redirect_to '/contacts'
    end
    
    def 
        search
        query = "%#{params[:query]}%"
        @contacts = Contact.where('first_name LIKE ? OR last_name LIKE ? OR city LIKE ? OR state LIKE ?', query, query, query, query)
        # SELECT * FROM WHERE first_name LIKE ?
    end
end
