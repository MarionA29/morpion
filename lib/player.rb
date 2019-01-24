require 'pry'
class Player
  attr_reader :name, :symbole, :taken_cells
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).

  def initialize
    puts "Quel nom veux tu choisir?"
    @name = gets.chomp
    puts "Quel symbole veux tu choisir : X ou O?"
    @symbole = gets.chomp
    #TO DO : doit régler son nom et sa valeur
    @taken_cells = []
  end
end

#binding.pry
