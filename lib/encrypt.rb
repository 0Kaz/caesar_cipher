def encrypt(string, permutation_level)
    # TODO encryption for a caesar cipher
  # 1. Define an array with the 26 letters of the alphabet (in capital letters)
  # 2. Split the text in a `letters` array
  # 3. Iterate over letters, for each letter, test its inclusion in the alphabet
  # 4. Map the letter to its left-shift or to itself
  # 5. Join the mapped array and return it
  alphabet = ('a'..'z').to_a
  codex = string.downcase.split('').map do |l|
    l != ' ' || l.scan(/[^A-Za-z0-9]/).length != 0  ? alphabet[(alphabet.find_index(l) + permutation_level) % 26 ] : l
  end
  
  return string.length == 0 ? string : codex.join('').upcase
end
