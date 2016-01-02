# Implement your object-oriented solution here!

class LargestPalindromeProduct

  def answer
    max = 999
    pal = []
    trip_digs = (100..999).to_a.reverse
    
    trip_digs.each do |num|
      max.downto(100).each do |num2|
        @n = num * num2
        if palindrome?
          pal.empty? ? pal << @n : @n > pal[0] ? pal[0] = @n : break
        end
      end
      max -= 1
    end
    
    pal[0]
  end

  def palindrome?
    @n.to_s == @n.to_s.reverse
  end
end
