class Owner
  
attr_accessor :pets
  attr_reader :species, :name
 
@@all = [] 

 
  def initialize(name)
    @name = name
    @pets = pets
    @species = species
    @@all << self
  end
  
  def save 
    @@all << self
  end

  def species
    @species = "human"
  end
   
  def say_species
    return "I am a #{@species}."
  end
   
  def self.all 
    @@all
  end
   
  def self.count
    @@all.size
  end
   
  def self.reset_all 
    @@all.clear
  end
 
  def cats 
  Cat.all.select  { |cat| cat.owner == self }
  end
   
  def dogs 
  Dog.all.select  { |dog| dog.owner == self }
  end
  
  def buy_cat(name)
    @pets << Cat.new(name, self)
  end 

  def buy_dog(name)
    
  end
  
 def walk_dogs 
    pets[:dog].each do |dog|
    dog.mood = "happy"
    end 
  end 
  
  def list_pets
    "I have #{pets[:dogs].count} dog(s) and #{pets[:cats].count} cat(s)."
  end
  
end
