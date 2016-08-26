#!/usr/bin/ruby

drum = (1..6).to_a #Количество камор
camore_with_cartridge = gets.to_i #Номер камора где находится патрон
#rand_drum = drum.sample #Случайная камора
ordered_drum = drum.slice!(drum.sample,6) + drum #Случайный камор

ordered_drum.each { |camore|
  if camore_with_cartridge == camore
    p "Game Ower"
    break
  else
    puts "Вам повезло. Следующий ход соперника"
    gets
  end
}