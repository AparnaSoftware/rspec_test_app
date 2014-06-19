class UserMailer < ActionMailer::Base
  default from: "from@example.com"

 def feedback_email
    mail :to => "praneetheee240@gmail.com", :subject => "test subject", :body => "test message"
  end

  end