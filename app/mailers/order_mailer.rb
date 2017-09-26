class OrderMailer < ApplicationMailer
  default from: 'Gull Paper Express'

  def order_email(user)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    mail(to: @user.email, subject: 'Your Gull Paper Delivery order is being processed')
  end

  def order_admin_email(user, attachment)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    attachments['order-attachment'] = { content: File.read("#{Rails.root}/public"+attachment.to_s), mime_type: "image/pdf"}
    mail(to: 'gullpaperexpress@gmail.com', subject: 'New order submitted')
  end

end
