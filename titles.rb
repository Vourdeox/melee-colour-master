def t_main(a)
  if a == 0
    print "\e[H\e[2J"
    puts '|\\/|c|\\/| - Melee Colour Master v0.3'
    puts '------------------------------------------------------------------'
    puts '| 1. CSS colours | 2. Save/Load profiles | 3. Settings | 4. Quit |'
    puts '------------------------------------------------------------------'
  elsif a == 1
    print "\e[H\e[2J"
    puts '|\\/|c|\\/| - Melee Colour Master v0.3'
    puts '------------------------------------------------------------------'
    puts '| 1. CSS colours | 2. Save/Load profiles | 3. Settings | 4. Quit |'
    puts '------------------------------------------------------------------'
  end
end


def t_edit(a)
  if a == 0
    print "\e[H\e[2J"
    puts '|\\/|c|\\/| - CSS'
    puts '------------------------------------------------------------------------'
    puts '| 1. Background | 2. Top bar | 3. Rule frame | 4. Bottom bar | 5. Back |'
    puts '------------------------------------------------------------------------'
  elsif a == 1
    print "\e[H\e[2J"
    puts '|\\/|c|\\/| - CSS'
    puts '------------------------------------------------------------------------'
    puts '| 1. Background | ========== | ============= | ============= | ======= |'
    puts '------------------------------------------------------------------------'
  elsif a == 2
    print "\e[H\e[2J"
    puts '|\\/|c|\\/| - CSS'
    puts '------------------------------------------------------------------------'
    puts '| ============= | 2. Top bar | ============= | ============= | ======= |'
    puts '------------------------------------------------------------------------'
  end
end
