HEADS = 0
TAILS =1

def number_of_flips (first_coin, second_coin)

  flips = 0
  first  = false
  second = false

  begin
    flips += 1
    result = rand(2)

    if first && result != second_coin
      first = false
    end
    if first && result == second_coin
      second = true
    end
    if !first && result == first_coin
      first = true
    end

  end while !second

  flips

end


def get_avg

  ht_total = 0
  hh_total = 0
  iter_count = 100000

  iter_count.times do
    ht_total += number_of_flips(HEADS,TAILS)
    hh_total += number_of_flips(HEADS,HEADS)
  end

  puts "Average for H-H #{((hh_total.to_f)/iter_count).round}"
  puts "Average for H-T #{((ht_total.to_f)/iter_count).round}"

end


get_avg
