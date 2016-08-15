#!/usr/bin/ruby
DRUM_SIZE = 6 #Размер барабана
puts "Вставьте патрон в барабан:"
recharge_cartridge = gets #Номер барабана в котором находится патрон
random_drum = rand(1..6) #Случайный барабан
if recharge_cartridge.to_i < 0 && recharge_cartridge.to_i > 6
  puts "Вы ввели не верное значени"
else
  while random_drum.to_i <= DRUM_SIZE do
    puts "Нажмите на курок"
    pull_trigger = gets
    if random_drum == recharge_cartridge.to_i
      puts "Вы проиграли :("
      break
    elsif random_drum == 6
        random_drum = 1
    else
        random_drum += 1
    end
      puts "Вам повезло. Следующий ход соперника"
  end
end