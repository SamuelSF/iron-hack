class ContactsController < ApplicationController
    def index
        @my_contacts = Contact.order("name ASC")
        render 'index'
    end

    def new
        render 'new'
    end

    def create
        my_contact = Contact.new
        my_contact.name = params[:contact][:name]
        my_contact.phone_number = params[:contact][:phone]
        my_contact.address = params[:contact][:address]
        my_contact.email_address = params[:contact][:email]
        my_contact.save
        redirect_to '/contacts'
    end

    def show
        @my_contact = Contact.find_by(id: params[:id])
        render "show"
    end
end
