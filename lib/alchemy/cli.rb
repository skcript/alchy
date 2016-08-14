require 'thor'

module Alchemy
  class Terminal < Thor
    desc "combine", "combine two elements to create a new element"
    def combine(mother, father)
      game = Alchemy::Game.new
      game.make_with(mother, father)
    end

    desc "show", "show all created elements"
    def show
      game = Alchemy::Game.new
      game.show
    end

    # desc "origin", "shows element origin"
    # def origin(element)
    #   Alchemy::Element.new(element).origin
    # end
    #
    # desc "offsprings", "shows all possible offsprings of element"
    # def offsprings(element)
    #   Alchemy::Element.new(element).offsprings
    # end
  end
end
