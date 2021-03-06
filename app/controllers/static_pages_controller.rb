class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
                            to: ENV['EMAIL_ADDRESS'],
                            subject: "A new contact form message from #{@name}",
                            body: @message).deliver_now
  end
end
