class OrderNotifier < ApplicationMailer
default from: 'Sam Ruby <depot@example.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received
    #@greeting = "Hi"

    #mail to: "to@example.org"
    @order = order

    mail to: order.email, subject: 'Подтверждение заказа в Pragmatic Store'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped
    #@greeting = "Hi"

    #mail to: "to@example.org"
    @order = order

    mail to: order.email, subject: 'Заказ из Pragmatic Store отправлен'
  end
end
