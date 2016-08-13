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

    # desc "info", "shows element origin"
    # def info(element)
    #   Alchemy::Element.new(element).origin
    # end
  end
end
