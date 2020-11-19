class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.create(object: Faker::Lorem.sentence(word_count: 3), body: Faker::Lorem.paragraph)

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
