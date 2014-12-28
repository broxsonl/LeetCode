def count_n_say(n)
  n -= 1
  digits = nil
  n.times do
    digits = help! digits
  end
  digits.empty? ? '1' : digits
end

def help!(digits)
  container = []
  digits ||= '1'
  digits.each_char do |c|
    if container.empty? || container[-1][0] != c
      container.push([c])
    else
      container[-1].push(c)
    end
  end
  container.map { |l| [l.length.to_s, l.uniq] }.flatten.join
end
