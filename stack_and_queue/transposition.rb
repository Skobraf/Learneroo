def do_stuff(text)
  g_s = 0
  n_s = 0
  found_g = false
  g_index = nil

  text.each_char.with_index do |char, i|
    if found_g
      # do something here
      if char == 'g'
        g_s += 1
      elsif char =='n'
        n_s += 1
      else
        # false alarm or finish
        puts g_index
        found_g = false
        for j in g_index...(g_index + n_s) do
          text[j] = 'n'
        end
        for k in (g_index + n_s)...(g_index + n_s + g_s) do
          text[k] = 'g'
        end
        g_s = 0
        n_s = 0
      end
    end

    if char == 'g' && found_g == false
      found_g = true
      g_s = 1
      g_index = i
      puts g_index
    end
  end
end

t = gets.to_i
for i in 1..t do
	text = gets
	do_stuff(text)
end


he was searchign on Bign for signign kigns -> he was searching on Bing for singing kings
rignadingdiggn! -> ringadingdingg!
gngngnnggnngggnnn -> nnnnnnnnngggggggg