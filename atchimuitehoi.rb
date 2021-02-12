  def janken_win
    puts "あっちむいて・・・"
    puts "0(↑) 1(↓) 2(→) 3(←)"
    
    player_hand = gets.chomp.to_i
    cp_hand = rand(4)
    
    atchimuitehoi_hands = ["↑", "↓", "→", "←"]
    
    puts "ホイ！"
    puts "-------------------------------------"
    puts "あなた: #{atchimuitehoi_hands[player_hand]}"
    puts "相手: #{atchimuitehoi_hands[cp_hand]}"
    puts "-------------------------------------"
    
    case player_hand
      when 0, 1, 2, 3
        if player_hand == cp_hand
          puts "-------------------------------------"
          puts "YOU WIN!!"
          puts "-------------------------------------"
          puts "-------------------------------------"
          return false
        else
          puts "じゃんけん・・・"
          return true
        end
      else 
        return janken_win
    end
    
  end
  
  def janken_lose
    puts "あっちむいて・・・"
    puts "0(↑) 1(↓) 2(→) 3(←)"
    
    player_hand = gets.chomp.to_i
    cp_hand = rand(4)
    
    atchimuitehoi_hands = ["↑", "↓", "→", "←"]
    
    puts "ホイ！"
    puts "-------------------------------------"
    puts "相手: #{atchimuitehoi_hands[cp_hand]}"
    puts "あなた: #{atchimuitehoi_hands[player_hand]}"
    puts "-------------------------------------"
    
    case player_hand
      when 0, 1, 2, 3
        if player_hand == cp_hand
          puts "-------------------------------------"
          puts "YOU LOSE・・・"
          puts "-------------------------------------"
          puts "-------------------------------------"
          return false
        else
          puts "じゃんけん・・・"
          return true
        end
      else 
        return janken_lose
    end
    
  end
  
def janken
  puts "0(グー) 1(チョキ) 2(パー) 3(やめる)"
  player_hand = gets.chomp.to_i
  cp_hand = rand(3)

  janken_hands = ["グー", "チョキ", "パー"]


  case player_hand
    when 0, 1, 2
      puts "-------------------------------------"
      puts "あなた: #{janken_hands[player_hand]}を出しました"
      puts "相手: #{janken_hands[cp_hand]}を出しました"
      puts "-------------------------------------"
      
    when 3
      puts "-------------------------------------"
      puts "また遊びましょう!"
      puts "アプリケーションを終了します"
      puts "-------------------------------------"
      exit
      
    else
      puts "-------------------------------------"
      puts "該当する番号がありません"
      puts "もう一度入力してください"
      puts "-------------------------------------"
      return true
  end

  win = (player_hand == 0 && cp_hand ==1 ) || (player_hand == 1 && cp_hand == 2) || (player_hand == 2 && cp_hand == 0)

  if player_hand == cp_hand
    puts "あいこで・・・"
    return true
    
  elsif win
    janken_win
    
  else
    janken_lose
  end
end
  
  puts "じゃんけん・・・"
  
  next_game = true
  
  while next_game do
    next_game = janken
  end
  
  