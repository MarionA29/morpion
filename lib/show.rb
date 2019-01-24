require_relative 'board'
class Show


  def show_board 
    puts "  #{@array_of_boardcases[0].symbole}  |  #{@array_of_boardcases[1].symbole}  |  #{@array_of_boardcases[2].symbole}  "
    puts "_" * 20
    puts "  #{@array_of_boardcases[3].symbole}  |  #{@array_of_boardcases[4].symbole}  |  #{@array_of_boardcases[5].symbole}  "
    puts "-" * 20
    puts "  #{@array_of_boardcases[6].symbole}  |  #{@array_of_boardcases[7].symbole}  |  #{@array_of_boardcases[8].symbole}  "


    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  end

end
