class OrderMailer < ActionMailer::Base
  default from: "admin@piratesbooty.com"

  def confirmation(order_id)
    @order = Order.find(order_id)
    mail(to: "#{@order.email}", subject: "Thanks for your money!")
  end
end