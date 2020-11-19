class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.create(object: Faker::Lorem.sentence(word_count: 3), body: Faker::Lorem.paragraph, read: false)

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def destroy
    @email = find_email
    
    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
    
    @email.delete
  end

  def show
    @email = find_email
    @email.update(read: true)

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  private

  def email_params
    params.permit(:content)
  end

  def find_email
    @email = Email.find(params[:id])
  end
end
