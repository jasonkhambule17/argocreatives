class ContactsController < ApplicationController
  def create
    begin
      @contact = Contact.new(contact_params)

      if @contact.valid?
      ApplicationMailer.new_message(@contact).deliver
      @contact.save
      redirect_to root_path, notice: "Your messages has been sent."
      else
        flash[:alert] = "An error occurred while delivering this message."
        render :new
      end
    end
  end

  protected

    def contacts
      Contact.all
    end

    def contact
      @_contact ||= Contact.find(params[:id])
    end

    def contact_name
      contact.name
    end

    def contact_params
      params.require(:contact).permit!
    end

end
