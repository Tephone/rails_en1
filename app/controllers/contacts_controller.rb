class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  def create
    #Contact.create(name: params[:contact][:name], email: params[:contact][:email], content: params[:contact][:content])
    #Contact.create(params[:contacts])
    @contact = Contact.create(params.require(:contact).permit(:name, :email, :content))
    if @contact.save
      redirect_to new_contact_path
    else
      # 入力フォームを再描画します。
      render :new
    end
  end
end
