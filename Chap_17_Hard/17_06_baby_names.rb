[['jon', 10], ['john', 5],['ben', 7], ['dave', 3], ['david', 4], ['jonathon', 13], ]
[['jon', 'john'], ['john', 'jonathon'], ['dave', 'david']]
[['jon', 'john'], ['john', 'jonathon'], ['jon', 'jonathon'], ['dave', 'david']]

=>
[['jon', 28], ['ben', 7], ['dave', 7]]

{
  jon: 'john',
  jonathon: 'jon',
  john: 0,
  ben: 7,
  dave: 7,
  david: 'dave'
}
100000 names

def baby_names(name_frequencies, equivelant_names)
  name_hash = generate_equivelance_hash(equivelant_names) // equivelance
  populate_name_hash(name_hash, name_frequencies) // equivelance * frequencies / 2
  formate_name_hash(name_hash) // equivelance
end

equivelance * frequencies

def formate_name_hash(name_hash)
  name_hash.select{ |k,v| v.is_a? Numeric }.to_a
end

def generate_equivelance_hash(equivelant_names)
  name_hash = {}
  equivelant_names.each do |first, second|
    if(name_hash[first] && name_hash[first] == 0)
      name_hash[second] = first
    else
      name_hash[first] = second
      name_hash[second] ||= 0
    end
  end
  
  name_hash
end

def populate_name_hash(name_hash, name_frequencies)
  name_frequencies.each do |name, value|
    base_name = base_name_for(name_hash, name) || name
    name_hash[name] = 0 unless name_hash[base_name]
    name_hash[base_name] += value
  end
  
  name_hash
end

def base_name_for(name_hash, name)
  name_value = name_hash[name]
  return false unless name_value
  return name if name_value.is_a? Numeric
  base_name_for(name_hash, name_value)
end

frequencies = [['jon', 10], ['john', 5],['ben', 7], ['dave', 3], ['david', 4], ['jonathon', 13], ]
duplicates = [['jon', 'john'], ['john', 'jonathon'], ['dave', 'david']]

baby_names(frequencies, duplicates)








