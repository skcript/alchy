module Alchy
  class Offspring
    attr_accessor :mother, :father, :child

    def initialize(mother: "", father: "")
      self.mother = mother
      self.father = father
    end

    def create
      child = find
      unless child.nil?
        puts "New element, #{child} 🎉"
        self.child = child
        return child
      end
    end

    private
    def find
      Alchy::ELEMENTS[mother].to_h[father] || Alchy::ELEMENTS[father].to_h[mother]
    end
  end
end
