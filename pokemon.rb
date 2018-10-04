class Pokemon
  #インスタンス変数をクラスの外部から参照するため
  attr_accessor :attack, :hp

  #PikachuとZenigameインスタンスにname,attack,hpを渡すため
  def initialize(name, attack, hp)
    @name = name
    @attack = attack
    @hp = hp
  end

  #nameメソッドでnameを引き渡せるように
  def name
    @name
  end
 #attackメソッドでattackを引き渡せるように
  def attack
    @attack
  end
  #hpメソッドでhpを引き渡せるように
  def hp
    @hp
  end
end

#インスタンスの作成
Pikachu = Pokemon.new("ピカチュウ", 13 , 30)
Zenigame = Pokemon.new("ゼニガメ" , 6 , 50)

puts"
************************************
戦闘開始
************************************
"

#試合数の変数
n=0
loop do
  #試合数の追加
  n += 1
  #戦闘の合間の間隔
  sleep(1)
  #ピカチュウの攻撃力がゼニガメより大きいとき
  if Pikachu.attack > Zenigame.attack
      Zenigame.hp = Zenigame.hp - Pikachu.attack
      puts "
      ---------------------------------------------------
      第#{n}戦目
      -------------------------------------------------
      "
      puts "#{Pikachu.name}の残りHP:#{Pikachu.hp}"
      puts "#{Zenigame.name}の残りHP:#{Zenigame.hp}"

    #ゼニガメの攻撃力がピカチュウより大きいとき
  elsif Zenigame.attack > Pikachu.attack
    Pikachu.hp = Pikachu.hp - Zenigame.attack
    puts "
    ---------------------------------------------------
    第#{n}戦目
    -------------------------------------------------
    "
    puts "#{Zenigame.name}の残りHP:#{Zenigame.hp}"
    puts "#{Pikachu.name}の残りHP:#{Pikachu.hp}"
  end

  #試合を終わらせる
  #ゼニガメのHPが0の時
  if Zenigame.hp <= 0
    #戦闘終了前の間隔
    sleep(2)
    puts "
    **************************************
    決着 !!!
    **************************************
    #{Zenigame.name}の瀕死、、#{Pikachu.name}の勝利!!
    "
    break
 #ピカチュウのHPが0の時
elsif Pikachu.hp <= 0
    #戦闘終了前の間隔
    sleep(2)
    puts "
    **************************************
    決着 !!!
    **************************************
    #{Pikachu.name}の瀕死、、#{Zenigame.name}の勝利!!
    "
    break
  end
end
