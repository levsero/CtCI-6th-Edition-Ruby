def perms(string)
  return [string] if string.length <= 1
  substring = string.slice(1, string.length)
  p "stringm,#{substring}"
  perms(substring)
  add_char_to_perms(perms, char)
end

def add_char_to_perms(perms, char)
  new_perms = []
  perms.each do |perm|
    perm.length.times do |idx|
      new_perms << perm.clone.insert(idx, char)
    end
  end
end

perms('asd')

'' => ['']
'a' => ['a']
'ab' => ['ab', 'ba']
'cab' => ['cab', 'cba', 'acb', 'bca', 'abc', 'bac']