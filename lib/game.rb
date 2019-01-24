require_relative 'player'
require_relative 'board'
require_relative 'show'
require 'pry'

class Game
  attr_accessor :current_player, :status, :board
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize
    puts "Création du joueur 1"
    @player1 = Player.new
    puts "Création du joueur 2"
    @player2 = Player.new
    @board = Board.new
    number = 1
    @status = "Player#{number} on going..."
    @current_player = "#{@player1.name}"
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  end

  def turn
    puts "#{@current_player}, c'est à toi de jouer !"
    @board_display = Show.new.show_board(@array_of_boardcases)
    #TO DO : méthode faisant appel aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end
=begin
  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end
=end

end
partie = Game.new
partie.turn
#binding.pry
