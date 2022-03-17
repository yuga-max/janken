def janken
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    player_hand = gets.to_i

    computer_hand = rand(3)

    jankens = ["グー", "チョキ", "パー"]
    atti = ["上","右","下","左"]

    puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[computer_hand]}"

    if player_hand == computer_hand
      puts "じゃんけん"
      return true
    elsif (player_hand == 0 && computer_hand == 1) || (player_hand == 1 && computer_hand == 2) || (player_hand == 2 && computer_hand == 0)
      puts "あなたの勝ちです"
      puts "あっち向いてホイ"
      puts "[0]:上[1]:右[2]:下[3]:左"
      player_hand2 = gets.to_i
      computer_hand2 = rand(4)
      puts "あなたの手:#{atti[player_hand2]}, 相手の顔:#{atti[computer_hand2]}"
    if player_hand2 == computer_hand2
      puts "貴方の勝ち"
      return false
    else 
      puts "じゃんけん"
      return true
    end
    else
      puts "あなたの負けです"
      puts "あっち向いてホイ"
      puts "[0]:上[1]:右[2]:下[3]:左"
      player_hand2 = gets.to_i
      computer_hand2 = rand(4)
      puts "あなたの顔:#{atti[player_hand2]},相手の手:#{atti[computer_hand2]}"
    if player_hand2 == computer_hand2
      puts "貴方の負け"
      return false
    else 
      puts "もう一度"
      return true
    end
    end
end

  next_game = true

  puts "最初はグー、じゃんけん..."

  while next_game do
    next_game = janken
  end