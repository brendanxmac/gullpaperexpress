class OrderMailer < ApplicationMailer
  default from: 'gullpaperexpress@gmail.com'

  def order_email(order, user)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    @order = order
    mail(to: @user.email, subject: 'Your Gull Paper Express will be processed as soon as Venmo payment is made')
  end

  def order_admin_email(order, user)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    @order = order
    attachment = @order.attachment
    attachments['order-attachment'] = { content: File.read("#{Rails.root}/public"+attachment.to_s), mime_type: "image/pdf"}
    mail(to: 'gullpaperexpress@gmail.com', subject: 'New order submitted')
  end

  def payment_recieved_user_email(order, user)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    @order = order
    mail(to: @user.email, subject: 'Payment to Gull Paper Express Recieved')
  end

  def payment_recieved_admin_email(order, user)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    @order = order
    mail(to: @user.email, subject: 'Payment Recieved from User')
  end

  def order_delivered_user_email(order, user)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    @order = order
    mail(to: @user.email, subject: 'Your order has been successfully delivered')
  end

  def order_delivered_admin_email(order, user)
    @user = user
    @url = 'https://gullpaperexpress.herokuapp.com'
    @order = order
    mail(to: @user.email, subject: 'Order was successfully delivered')
  end


end
