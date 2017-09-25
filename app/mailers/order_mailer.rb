class OrderMailer < ApplicationMailer
  default from: 'gullpaperexpress@gmail.com'

  def order_email(user)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    mail(to: @user.email, subject: 'Your Gull Paper Delivery order is being processed')
  end

  def order_admin_email(user, attachment)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    attachments['order-attachment'] = { content: File.read("#{Rails.root}/public"+attachment.to_s), mime_type: "image/pdf"}
    mail(to: @user.email, subject: 'New order submitted')
  end

end
