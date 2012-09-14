module KnowsPingPong
  def set_start(start)
    @start = start.to_i
  end

  def start
    @start
  end

  def set_stop(stop)
    @stop = stop.to_i
  end

  def stop
    @stop
  end
end

World(KnowsPingPong)

Given /^decimals from (\d+) to (\d+)$/ do |a, b|
  set_start(a)
  set_stop(b)
end

Then /^each value should be converted to a roman numeral and back to a decimal$/ do
  #pending # express the regexp above with the code you wish you had
  puts "start: #{start}, stop: #{stop}"
  (1..100).to_a.each do |n|
    #puts "n: #{n}, roman: #{n.to_roman}, i: #{n.to_roman.to_i}"
    n.to_roman.to_i.should eq(n)
  end
end