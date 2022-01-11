def game
   puts "ジャンケン"
  def janken
   
    puts "グー(0),チョキ(1),パー(2)"
    puts "---------"
    
    input=gets.to_i
    computer=rand(3)
    jankens=["グー","チョキ","パー"]
      
    if input==computer
     puts "あなたは#{jankens[input]}、相手は#{jankens[computer]}を出しました"
     puts "あいこです"
     return true
    elsif input==0 && computer==1 || input==1 && computer==2 || input==2 && computer==0 
     puts "あなたは#{jankens[input]}、相手は#{jankens[computer]}を出しました"
     puts "あなたの勝ちです"
     @case_pattern="勝ち"
     return false
    else
     puts "あなたは#{jankens[input]}、相手は#{jankens[computer]}を出しました"
     puts "あなたの負けです"
     @case_pattern="負け"
     return false
    end
  end
  
  
  janken_aiko=true
  
  while janken_aiko 
    janken_aiko=janken
  end
  
  if @case_pattern=="勝ち"
    puts "あなたの番です"
    puts "あっち向いて〜"
    puts "上(0)、下(1)、右(2)、左(3)"
    input_hand=gets.to_i
    computer_hand=rand(4)
    attimuite=["上","下","右","左"]
    
    if input_hand==computer_hand
      puts "あなたは#{attimuite[input_hand]}を向いて、相手は#{attimuite[computer_hand]}を指しました"
      puts "あなたの勝ちです"
      return false
    else 
      puts "あなたは#{attimuite[input_hand]}を向いて、相手は#{attimuite[computer_hand]}を指しました"
      puts "あいこです"
      return true
    end
  end
  
  if @case_pattern=="負け"
    puts "相手の番です"
    puts "あっち向いて〜"
    puts "上(0)、下(1)、右(2)、左(3)"
    input_hand=gets.to_i
    computer_hand=rand(4)
    attimuite=["上","下","右","左"]
    
    if input_hand==computer_hand
      puts "あなたは#{attimuite[input_hand]}を向いて、相手は#{attimuite[computer_hand]}を指しました"
      puts "あなたの負けです"
      return false
    else 
      puts "あなたは#{attimuite[input_hand]}を指して、相手は#{attimuite[computer_hand]}を向きました"
      puts "あいこです"
      return true
    end
  end 
end 

 aiko=true
 
 while aiko
   aiko=game
   
 end