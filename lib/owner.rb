# class Owner
  
# attr_accessor :pets
#   attr_reader :species, :name
 
# @@all = [] 

 
#   def initialize(name)
#     @name = name
#     @pets = pets
#     @species = species
#     @@all << self
#   end
  
#   def save 
#     @@all << self
#   end

#   def species
#     @species = "human"
#   end
   
#   def say_species
#     return "I am a #{@species}."
#   end
   
#   def self.all 
#     @@all
#   end
   
#   def self.count
#     @@all.size
#   end
   
#   def self.reset_all 
#     @@all.clear
#   end
 
#   def cats 
#   Cat.all.select  { |cat| cat.owner == self }
#   end
   
#   def dogs 
#   Dog.all.select  { |dog| dog.owner == self }
#   end
  
#   def buy_cat(name)
#     @pets << Cat.new(name, self)
#   end 

#   def buy_dog(name)
    
#   end
  
# def walk_dogs 
#     pets[:dog].each do |dog|
#     dog.mood = "happy"
#     end 
#   end 
  
#   def list_pets
#     "I have #{pets[:dogs].count} dog(s) and #{pets[:cats].count} cat(s)."
#   end
  
# end
class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  
  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @cats = []
    @dogs = []

  end
  
  def species
    @species = "human"
  end
  
  def say_species
    "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
 
  def buy_cat(cat_name)
    @@all << Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    @@all << Dog.new(dog_name, self)
  end
  
  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    @cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    @cats.each {|cat| cat.mood = "nervous"
      cat.owner = nil}
    @dogs.each {|dog| dog.mood = "nervous"
      dog.owner = nil}
    @cats = []
    @dogs = []
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end