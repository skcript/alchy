require 'thor'

module Alchy
  class Terminal < Thor
    desc "combine", "combine two elements to create a new element"
    def combine(mother, father)
      game = Alchy::Game.new
      game.make_with(mother, father)
    end

    desc "show", "show all created elements"
    def show
      game = Alchy::Game.new
      game.show
    end

    # desc "origin", "shows element origin"
    # def origin(element)
    #   Alchy::Element.new(element).origin
    # end
    #
    # desc "offsprings", "shows all possible offsprings of element"
    # def offsprings(element)
    #   Alchy::Element.new(element).offsprings
    # end
  end
end
