class ContactsController < ApplicationController
    def index
        @favorites = false
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
        my_contact.favorite = false
        my_contact.save
        redirect_to '/contacts'
    end

    def show
        @my_contact = Contact.find_by(id: params[:id])
        render "show"
    end

    def favorites
        @favorites = true
        @my_contacts = Contact.where(favorite: true)
        render 'index'
    end

    def favorite
        my_contact = Contact.find_by(id: params[:who])
        my_contact.favorite = true
        my_contact.save
        redirect_to '/contacts'
    end

    def unfavorite
        my_contact = Contact.find_by(id: params[:who])
        my_contact.favorite = false
        my_contact.save
        redirect_to '/contacts'
    end
end
