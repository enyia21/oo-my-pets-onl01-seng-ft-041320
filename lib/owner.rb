require "pry"
class Owner
  # code goes here

  attr_reader :name, :species

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  # def self.find_or_create_owner(owner)
  #   if self.all.any?{|known_owner| owner == known_owner}
  #     known_owner
  #   else
  #     self.all << owner
  #     owner
  #   end
  # end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
    # binding.pry

  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
    # binding.pry
  end


end
