class OrderMailer < ApplicationMailer
  default from: 'gullpaperdelivery@gmail.com'

  def order_email(user)
    @user = user
    @url = 'https://gullpaperdelivery.herokuapp.com'
    mail(to: @user.email, subject: 'Your Gull Paper Delivery order is being processed')
  end

  def order_admin_email(user, attachment)
    @user = user
    @url = 'https://gullpaperdelivery.herokuapp.com'
    attachments['order-attachment'] = { content: File.read("#{Rails.root}/public"+attachment.to_s), mime_type: "image/pdf"}
    mail(to: @user.email, subject: 'New order submitted')
  end

end
