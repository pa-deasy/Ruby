class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(name, age)
    self.name = name
    self.age = age
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    self.age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
# sparky.human_years  NoMethodError: private method `human_years' called
p sparky.public_disclosure


puts "---------------------"


class Person
  def initialize(age)
    @age = age
  end

  def older?(other_person)
    age > other_person.age
  end

  protected
  attr_reader :age
end

malory = Person.new(64)
sterling = Person.new(42)
p malory.older?(sterling)
p sterling.older?(malory)
# p malory.age  NoMethodError: protected method 'age' called