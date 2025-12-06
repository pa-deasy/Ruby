class PaymentStrategy
  def pay(amount)
    raise NotImplementedError
  end
end

class CreditCardPayment < PaymentStrategy
  def pay(amount)
    puts "Paid #{amount} using Credit Card"
  end
end

class PayPayPayment < PaymentStrategy
  def pay(amount)
    puts "Paid #{amount} using PayPal"
  end
end

class ShoppingCart
  def initialize(payment_strategy)
    @payment_strategy = payment_strategy
  end

  def checkout(amount)
    @payment_strategy.pay(amount)
  end
end

cart = ShoppingCart.new(CreditCardPayment.new)
cart.checkout(100)

cart = ShoppingCart.new(PayPayPayment.new)
cart.checkout(200)