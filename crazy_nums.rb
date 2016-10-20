def crazy_nums(max)
  returnArray = (1...max).to_a

  returnArray.select! { |e| (e % 3 == 0)^(e % 5 == 5)}
  #should stay in order without sorting
  return returnArray
end

print crazy_nums(5)