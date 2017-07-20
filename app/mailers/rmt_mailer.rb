class RmtMailer < ApplicationMailer

  default from: 'doctorbyron05@gmail.com',
            to: 'alexander.khil@devrecords.com'

  def item_order(user_mail, user_name, user_phone)

    @user_mail = user_mail
    @user_name = user_name
    @user_phone = user_phone

    mail(to: 'alexander.khil@devrecords.com', subject: 'Welcome to My Awesome Site')
  end

end