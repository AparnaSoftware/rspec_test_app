class FeedbackController < ApplicationController
  def feedback_form
  end

  def send_email
  UserMailer.feedback_email.deliver
  end
end
