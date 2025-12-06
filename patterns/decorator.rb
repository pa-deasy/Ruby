class Coffee
  def cost
    raise NotImplementedError
  end
end

class BrewCoffee < Coffee
  def cost
    3
  end
end

class LatteCoffee < Coffee
  def cost
    5.5
  end
end

class CoffeeDecorator < Coffee
  def initialize(coffee)
    @coffee = coffee
  end
end

class OatMilkDecorator < CoffeeDecorator
  def cost
    @coffee.cost + 1
  end
end

class SyrupDecorator < CoffeeDecorator
  def cost
    @coffee.cost + 0.5
  end
end

brewed_with_oat_milk_and_syrup = SyrupDecorator.new(OatMilkDecorator.new(BrewCoffee.new))
p "Cost of brewed coffee with oat milk and syrup: #{brewed_with_oat_milk_and_syrup.cost}"

latte_with_oat_milk_and_syrup = SyrupDecorator.new(OatMilkDecorator.new(LatteCoffee.new))
p "Cost of latte with oat milk and syrup: #{latte_with_oat_milk_and_syrup.cost}"