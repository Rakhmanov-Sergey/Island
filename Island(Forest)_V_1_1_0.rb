strangecard = '***'
key = '***'
money = '***'
puts ''
puts '================================ Island V 1.1.0 ============================='
puts 'Что нового?! Читать? Да = 5; нет = 0.'

yes_no = gets.chomp

if yes_no == '5'
  puts ''
  puts '1. Изменено название игры!'
  puts '2. Добавление лабиринта.'
  puts '3. Добавление 5, 6 и 7 развилки.'
  puts '4. Добавление двух новых задачек.'
  puts '5. Добовление авторов.'
  puts '6. Добовление двух новых вещей.'
  puts ''
  puts 'Теперь приступайте к игре.'
else
  puts ''
  puts 'Очень жаль.:( Можете приступать к игре.'
end
gets
#==================================================================================
system 'cls'
puts ''
puts 'Как-то раз мальчик по имени Саша приплыл с экскурсией на остров, оторвался от' 
puts 'экскурсии и потерялся в джунглях! Помоги Саше пройти через лабиринты острова'
puts 'и подойти к лодке, где его ждет его экскурсия. Для этого собирай предметы и'
puts 'решай увлекательные головоломки и задачи. Удачи!'
puts ''
puts 'Для начала игры наберите свё имя. (На английском языке.)'

name = gets.chomp

puts
puts 'Здравствуйте, ' + name + '!'
puts
puts 'А вот ваше первое правило. Чтобы играть в игру "Island" вам надо'
puts 'иметь карту. Она находится в D/_Sergey/paint/Игры (мои)/Island (Forest)/Map for 1.1.0.'
puts 
puts 'Сейчас время для вашего первого испытания!'
puts 
puts 'Вы на первой развилке. Куда пойти? Направо = 6; налево = 4.'
  
right_left_on_f = gets.chomp

#If 6 on 1
if right_left_on_f == '6'
  puts ''
  puts 'Перед вами развилка номер 3 (No 3).'
  puts 'Куда пойти? Направо = 6; налево = 4 прямо = 8.'

 right_left1 = gets.chomp
	           
  if right_left1 == '6'
    puts ''
    puts 'О нет Вы в тупике.'
    exit
  end
  
  if right_left1 == '4'
    system 'cls'
    puts
    puts 'Ура Вы нашли предмет "Странная карточка"'
    puts 'Но она лежит в чемодане. На чемодане есть цифровой замок состоящий из трех чи-'
    puts 'сел. Попытайтесь угодать код. Кстати на чемодане написанно три буквы и слова.'
    puts 'Первая - "В"; вторая - "Ж"; треяя - "А"; слова - "Порядок в *лф*в**е". Напиши-'
    puts 'те код здесь.'
    
    kodeforbag = gets.chomp
    
    while kodeforbag != '381'
      puts 'Неверно! Попробуйте еще раз!'
      kodeforbag = gets.chomp
    end
    
    puts 'Поздравляю Вы открыли чемодан. Взять "Странную карточку"? Да = 5; нет = 0.'   
      
    yes_no = gets.chomp
      
    if yes_no == '5'
      puts 'Ваш предмет находится в рюкзаке. Посмотреть рюкзак? Да = 5; нет = 0.'
      
      strangecard = '"Странная карточка"'
      
      yes_no = gets.chomp
        
      if yes_no == '5'
        puts 'В Вашем рюкзаке находятся: ' + strangecard + ', ' + key + ' и ' + money + '.'
        puts 'Хорошо. Нажмите "8", чтобы пойти прямо на развилке номер 3.'
        right_left1 = gets.chomp
      else
        puts 'Ну ладно.'
      end
    else
      puts 'Очень странно ну ладно. Нажмите "8", чтобы пойти прямо на развилке номер 3.'
      puts 'Если Вы устали и хотите выйти, нажмите "0".'
      
      right_left1 = gets.chomp
    end
  end  
  
  if right_left1 == '8'
    puts 'Вы нашли сундук с предметом. Открыть? Да = 5; нет = 0.'
	  
    yes_no = gets.chomp
	
    if yes_no == '5'
      puts 'Чтобы открыть сундук надо решить головаломку.'
      puts 'Сколько будет 25+137?'
	  
      ansser = gets.chomp
	  
      while ansser != '162'
        puts 'Сколько будет 25+137?'
        ansser = gets.chomp
      end

      puts 'Вы нашли предмет "Загадочный ключ"! Взять? Да = 5; нет = 0.'
	  
      yes_no = gets.chomp
	  
      if yes_no == '5'
        puts 'Ваш предмет находится в вашем рюкзаке. Посмотреть рюкзак? да = 5; нет = 0.'
	    
        key = '"Загадочный ключ"'
	    
        yes_no = gets.chomp	    
	    
        if yes_no == '5'
          puts
          puts 'В вашем рюкзаке находится: ' + key + ', ' + strangecard + ', ' + money + '.'
          puts
          puts 'Теперь поверните в другую сторону на 1 развилке. (No 1) Нажмите 4.'
        end
       
        right_left_on_f = gets.chomp
		
      end
    end
  end   

  if right_left1 == '0'
    puts 'Вы проиграли игру.'
    exit
  else
    puts 'Ошибка! Постарайтесь больше не ошибаться!'
  end
end

# If = 4 on 1
if right_left_on_f == '4'
  puts 'Перед вами развилка номер 2 (No 2).'
  puts 'Выбирите куда пойти? Прямо = 8; направо = 6.'

  right_left1 = gets.chomp
  
  if right_left1 == '8'
    system 'cls'
    puts 'О нет! Вы в тупике!'
    puts 'Вы проиграли игру! :('
    exit
  end
	
  if right_left1 == '6'
    puts 'Хорошо перед Вами развилка номер 5. (No 5)'
    puts 'Выбирете куда пойти. Прямо = 8; Выход = 0.' 
  end
end
  
  head_exit = gets.chomp

  if head_exit == '0' 
    puts 'Вы проиграли игру. :('
    exit
  end 
  
  if head_exit == '8'
	  system 'cls'
    puts 'Вы вошли в "Великий лабиринт острова ***". В нем Вы видите маленький экран.'
	  puts 'На этом экране есть задание для Вас. Вы читаете его. Вот оно:'
	  puts '|=========================================================================|'
	  puts '| 1. Сегодня мы предлагаем Вам сыграть в игру "PackMan". И Вам надо пройти|'
    puts '|в этой игре 5 уровней. После этого Вы увидите ещё один экран и уже на нем|'
	  puts '|булет написано Ваше следующее задание. После этого Вы увидите лодку, при-|'
	  puts '|вязанную к столбу. Чтобы отвизать лодку Вам надо будет решить 3 и послед-|'
	  puts '|нюю задачку, написанную на 3 экране. Также за все Ваше пробывание в "Ве- |'
	  puts '|ликом лабиринте острова ***" Вам надо угадать название острова, на кото- |'
	  puts '|ром стоит лабиринт и Вы сами находитесь.                                 |'
	  puts '| Внимательно прочитайте задание 1 и выполните его.                       |'
	  puts '|                    ВЕЛИКИЙ ЛАБИРИНТ ОСТРОВА * * *                       |'
	  puts '|=========================================================================|'

	  gets.chomp

    ##############################Игра PackMan #################################

    #Global variables
    $Map = []
    $MyPos = [0,0]
    $Level = 1

    #PackMan
    def read_char
      require "Win32API"
      Win32API.new("crtdll", "_getch", [], "L").Call
    end
      
    def readLevelMap
      resArray = []
      fileName = 'D://_Sergey//Ruby//Learn//Maps//Smallmap' + $Level.to_s + '.txt'
      
      if File.exist?(fileName)
        file = File.new(fileName, 'r')
        while (line = file.gets)
          resArray.push line
        end
      end
      $Map = resArray
    end
    
    def findStartPos
      x = 0
      y = 0
      $Map.each do |line|
        x = line.index('+')
        break if x != nil
        y += 1
      end
      $MyPos = [x,y]
    end
    
    def moveLeft
      line = $Map[$MyPos[1]]
      thing = line[$MyPos[0]-1]
      case thing
      when ' '
        newPosX = $MyPos[0]-1
        line[$MyPos[0]] = ' '
        line[newPosX] = '+'
        $Map[$MyPos[1]] = line
      when '$'
        newPosX = 0
      else
        newPosX = $MyPos[0]
        print "\a"
      end
      $MyPos = [newPosX, $MyPos[1]]
    end
    
    def moveRight
      line = $Map[$MyPos[1]]
      thing = line[$MyPos[0]+1]
      case thing
      when ' '
        newPosX = $MyPos[0]+1
        line[$MyPos[0]] = ' '
        line[newPosX] = '+'
        $Map[$MyPos[1]] = line
      when '$'
        newPosX = 0
      else
        newPosX = $MyPos[0]
        print "\a"
      end
      $MyPos = [newPosX, $MyPos[1]]
    end
    
    def moveDown
      line = $Map[$MyPos[1]+1]
      thing = line[$MyPos[0]]
      case thing
      when ' '
        newPosY = $MyPos[1]+1
        line[$MyPos[0]] = '+'
        $Map[$MyPos[1]+1] = line
        line = $Map[$MyPos[1]]
        line[$MyPos[0]] = ' '
        $Map[$MyPos[1]] = line
      when '$'
        newPosY = 0
      else
        newPosY = $MyPos[1]
        print "\a"
      end
      $MyPos = [ $MyPos[0], newPosY]
    end
    
    def moveUp
      line = $Map[$MyPos[1]-1]
      thing = line[$MyPos[0]]
      case thing
      when ' '
        newPosY = $MyPos[1]-1
        line[$MyPos[0]] = '+'
        $Map[$MyPos[1]-1] = line
        line = $Map[$MyPos[1]]
        line[$MyPos[0]] = ' '
        $Map[$MyPos[1]] = line
      when '$'
        newPosY = 0
      else
        newPosY = $MyPos[1]
        print "\a"
      end
      $MyPos = [ $MyPos[0], newPosY]
    end
    
    #===================================
    while true # game loop
      readLevelMap
      
      if $Map == []
        print "\a\a"
        break
      end
      
      findStartPos
      while true # level loop
        system 'cls'
        puts $Map
        puts
      
        direction = read_char
        #puts direction 
        case direction
        when 75 then moveLeft
        when 77 then moveRight
        when 72 then moveUp
        when 80 then moveDown
        when 27 #Esc
          puts 'Вы проиграли игру! :('
          break
        end
          
        if $MyPos[0] == 0 or $MyPos[1] == 0
          puts 'Вы сделали это!'
          break
        end
      end

      while true
        puts 'Вы хотите продолжить?'
        case read_char
        when 121 # y
          $Level += 1
          break
        when 110, 27 # n, esc
          puts 'До свидания.'
          $Level = 0
          break
        else
          puts 'Вы можете ответить только:'
          puts '  y для "Да"'
          puts '  n для "Нет"'
          puts '  Esc для "Выход"'
          puts 'ВНИМАНИЕ! ВВОДИТЕ АНГЛИЙСКИМИ БУКВАМИ! ДЛЯ ВЫХОДА - КНОПКА Esc!'
        end
      end

      # Quit Game
      break if $Level == 0
      
    end
    puts 'Игра законченна Вами! Ура!:)'
    read_char   
  end         

  ################################################# Конец #####################################  
  
  puts 'Теперь перед Вами второе задание! Читать? (Да - 5; нет - 0)'
  yes_no = gets.chomp
  if yes_no == '0'
    puts 'Очень жаль. Вы проиграли игру. :('
    exit
  end
  
  if yes_no == '5'
    system 'cls'
    puts 'Хорошо! Второе задание тоже написано на экране. Вот оно:'
    puts '|=========================================================================|'
    puts '| 2. Снова здравствуйте, ' +  name + '. Вот Вы и дошли до второго задания. Если Вы до-|'
    puts '|бросовесно выполнили первое задание, второе будет козаться очень лёгким. |'
    puts '|                                                                         |'
    puts '| Вам надо будет:                                                         |'
    puts '| 1. Решить лёгкие примеры.                                               |'
    puts '| 2. Найти порядок и написать одно следующее число.                       |'
    puts '| 3. Решить 3 лёгкие задачки.                                             |'
    puts '|                    Не забывайте о названии острова.                     |'
    puts '|                      ВЕЛИКИЙ ЛАБИРИНТ ОСТРОВА ***                       |'
    puts '|=========================================================================|'
    gets
    
    system 'cls'
    puts '"Лёгкие примеры". Ответы через пробел! БЕЗ ЗАПЯТЫХ!!! Например: 1 2 3!!!'
    puts 'Для выхода - 0!'
    puts
    puts '10 + 20 = ?'
    puts '135 + 3 = ?'
    puts '100000 + 5 = ?'
    puts '8 - 4 = ?'
    puts '10 - 7 = ?'
    
    anssers = gets.chomp
    
    if anssers == '0'
      puts 'Вы проиграли игру. :('
      exit
    end
    
    while anssers != '30 138 100005 4 3'  
      system 'cls'
      puts 'Ещё раз! Для выхода - 0!'
      puts '10 + 20 = ?'
      puts '135 + 3 = ?'
      puts '100000 + 5 = ?'
      puts '8 - 4 = ?'
      puts '10 - 7 = ?'
      anssers = gets.chomp
      if anssers == '0'
        puts 'Вы проиграли игру. :('
      exit
      end
    end
    
    system 'cls'
    puts 'А вот и порядок чисел. Вам надо найти закономерность постановки чисел в '
    puts 'каждом ряду и дописать ОДНО следующие число. Ответ в СТРОЧКУ через ПРОБЕЛ!'
    puts
    puts '1) 1 2 3 4 ...'
    puts '2) 2 4 6 8 ...'
    puts '3) 5 10 20 ...'
    puts '4) 10 5 20 15 30 ...'
    puts '5) 2 4 8 16 ...'
    
    anssers = gets.chomp
    
    while anssers != '5 10 40 25 32'
      puts 'Да нет же! Ещё раз! Выход - 0!'
      puts
      puts '1) 1 2 3 4 ...'
      puts '2) 2 4 6 8 ...'
      puts '3) 5 10 20 ...'
      puts '4) 10 5 20 15 30 ...'
      puts '5) 2 4 8 16 ...'
      if anssers == '0'
        puts 'Вы проиграли игру :('
        exit
      end
    end
  
  end
  
puts ''
puts 'Конец игры "Island", ждите обнавлений! (Возможно Вы не угодали правелиный путь)'
puts 'Хотите посмотреть авторов? Да = 5; нет = 0.'

yes_no = gets.chomp

if yes_no == '5'
  puts 
  puts 'Авторы:'
  puts 'Рахманов Сергей Владимирович - Разробочик и создатель "Island". Один из созда-'
  puts 'телей лабиринта.'
  puts 'Рахманов Владимир Викторович - Главный разробочик и создатель лабиринта.'
else
  puts 'Очень жаль!):'
end