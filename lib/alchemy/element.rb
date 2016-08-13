module Alchemy
  class Element
    attr_accessor :name

    def initialize(name)
      self.name = name
    end

    def offsprings
      read { |combis| puts "with #{combis[0]} => #{combis[1]}"}
      return
    end

    def origin
      search_for { |parents| puts "from #{parents[0]} and #{parents[1]}" }
      return
    end

    private
    def read
      Alchemy::ELEMENTS.each do |mother, combi|
        if mother == self.name
          combi.each do |father, child|
            yield [father, child]
          end
        else
          combi.each do |father, child|
            yield [mother, child] if father == self.name
          end
        end
      end
    end

    def search_for(&block)
      Alchemy::ELEMENTS.each do |mother, combi|
        combi.each do |father, child|
          yield [mother, father] if child == self.name
        end
      end
    end
  end
end
