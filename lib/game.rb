require_relative 'player'
require_relative 'board'
require_relative 'show'
require 'pry'

class Game
  attr_accessor :current_player, :board
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize
    puts "Création du joueur 1"
    @player1 = Player.new
    puts "Création du joueur 2"
    @player2 = Player.new
    @current_player = @player1
    @end_game = false
    puts "C'est parti !"
    @board = Board.new
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  end

  def switch_player
  end

  def turn
    puts "#{@current_player.name}, your turn !"
    @board = Show.show_board
    @current_player == @player1? @current_player = @player2 : @current_player = @player1
    puts "Your turn, #{@current_player.name}. Pick a cell by typing a number between 0 and 8."
    input = gets.chomp.to_i
        until input.between?(0, 8)
        puts "You need to type a number between 1 and 9."
        input = gets.chomp.to_i
        end
    #TO DO : méthode faisant appel aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

=begin
  def new_round
  system "clear"
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end
=end

  def game_end
    conditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

    conditions.each do |condition|
        if (condition - @current_player.taken_cells).empty?
            puts "#{@current_player.name} wins!"
            @end_game = true
        end
    end

        if @player1.taken_cells.size + @player2.taken_cells.size >= 9
          puts "Match nul"
        @end_game = true
        end
    @end_game
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end


end
partie = Game.new
partie.turn
#binding.pry
