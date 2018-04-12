# Make option to choose different regions as offsets are different?
# Profile creator and loader to allow sharing of colour schemes
#
#
#
#
require_relative 'titles'
require_relative 'profiles'

def main
  t_main(0)
  choice = gets.strip
  t_main(0)
  case choice
  when '1'
    menu
  when '2'
    profiles
  when '3'
    settings
  when '4'
    exit
  else
    puts 'Please enter a valid number'
    sleep(1.5)
    main
  end
end

def menu
  t_edit(0)
  choice = gets.strip
  t_edit(0)
  case choice
  when '1'
    offset_replace(2380, 'Background')
  when '2'
    def css_top
      t_edit(0)
      puts 'Please choose which part of the top bar to edit:'
      puts '[Note: Both are transparent so the main colours will combine]'
      puts '1 - Main smaller (changes borders)'
      puts '2 - Larger behind (more transparent)'
      top_choice = gets.strip
      case top_choice
      when '1'
        offset_replace(3444748, 'Top (above)')
      when '2'
        offset_replace(3444752, 'Top (below)')
      when 'x'
        menu
      else
        puts 'Choose a valid number, or enter \'x\' to go back'
        sleep(1.5)
        css_top
      end
    end
    css_top
    #offset_replace(OFFSET HERE, 'Top bar')
    #3444748 top
    #3444752 bot
  when '3'
    def css_rule
      t_edit(0)
      puts 'Please choose which part of the rule frame to edit:'
      puts '1 - Main border'
      puts '2 - Inner part (Transparent)'
      rule_choice = gets.strip
      case rule_choice
      when '1'
        offset_replace(3444556, 'Rule (main)')
      when '2'
        offset_replace(3444560, 'Rule (inner)')
      when 'x'
        menu
      else
        puts 'Choose a valid number, or enter \'x\' to go back'
        sleep(1.5)
        css_rule
      end
    end
    css_rule
  when '4'
    def css_bot
      t_edit(0)
      puts 'Please choose which part of the bottom bar to edit:'
      puts '[Note: Both are transparent so the main colours will combine]'
      puts '1 - Main smaller (changes borders)'
      puts '2 - Larger behind (more transparent)'
      top_choice = gets.strip
      case top_choice
      when '1'
        offset_replace(3444364, 'Bottom (above)')
      when '2'
        offset_replace(3444368, 'Bottom (below)')
      when 'x'
        menu
      else
        puts 'Choose a valid number, or enter \'x\' to go back'
        sleep(1.5)
        css_bot
      end
    end
    css_bot
  when '5'
    main
  else
    puts 'Please choose a valid option'
    sleep(1.5)
    menu
  end
end

def offset_replace(ofs, type)
  File.open('MnSlChr.usd','r+') do |f|
    f.seek ofs
    bin = f.read 3
    hex = bin.unpack('H*')[0]
    t_edit(0)
    puts "Selected: #{type}"
    print 'Binary: '
    p bin
    puts "Current hex: #{hex}",""
    puts 'Type a new colour hex, or press \'x\' to return:'
    input2 = gets.strip.to_s
    invalid = ['g'..'z']
    if input2 == 'x'
      menu
    elsif input2.length == 6 #&& invalid.include?(invalid) == false
      nuhex = input2.scan(/../).map { |x| x.hex }.pack('c*')
      f.seek ofs
      f.write nuhex
      t_edit(0)
      puts "#{type} hex at offset #{ofs} replaced with #{input2}"
      sleep(2.5)
      menu
    else
      t_edit(0)
      puts 'Please enter a valid hex code'
      sleep(1.5)
      offset_replace
    end
  end
end

main
