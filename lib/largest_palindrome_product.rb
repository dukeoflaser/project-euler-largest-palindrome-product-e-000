def largest_palindrome_product
  max = 999
  pal = []
  trip_digs = (100..999).to_a.reverse
  
  trip_digs.each do |num|
    max.downto(100).each do |num2|
      n = num * num2
      if is_palindrome?(n)
        pal.empty? ? pal << n : n > pal[0] ? pal[0] = n : break
      end
    end
    max -= 1
  end
  
  pal[0]
end


def is_palindrome?(number)
  number.to_s == number.to_s.reverse
end
