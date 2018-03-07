def living_people(people)
  born = Array.new(100, 0)
  died = Array.new(100, 0)
  
  people.each do |person|
    born[person.year_born - 1900] += 1
    died[person.year_died - 1900 + 1] += 1
  end
  
  max_alive, max_alive_year, alive = 0
  
  100.times do |idx|
    alive += born[idx]
    alive -= died[idx]
    if alive > max_alive
      max_alive = alive
      max_alive_year = idx
    end
  end
  
  max_alive_year + 1900
end
