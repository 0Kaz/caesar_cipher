# Caesar Cipher 

In cryptography, its one of the simplest most known encryption technique, the idea is simple,each letter of a given text is replaced by a letter some fixed number of positions down the alphabet. Ex : if the letter **A** position is 1, if we shift by 1 on the right, it will be **B**, if we do it on the left, it will be **Z**.

**Example** 

Plaintext:  THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG


Ciphertext: QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD

We shifted the letters positions by 3 on the right side. 

Let's first write our TDD before coding the method : 

```ruby
require 'encrypt'

describe "Encryption method" do 
    it "returns an empty string when passed an empty string" do
        actual = encrypt("", attr = nil)
        expected = ""
        expect(actual).to eq(expected)
    end

    it "Encrypts a given message " do 
        actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG",permutation_level = 3)
        expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
        expect(actual).to eq(expected)
    end
end

```


The pseudocode of our challenge would be :

```console
  # 1. Define an array with the 26 letters of the alphabet (in capital letters)
  # 2. Split the text in a `letters` array
  # 3. Iterate over letters, for each letter, test its inclusion in the alphabet
  # 4. Map the letter to its left-shift or to itself
  # 5. Join the mapped array and return it
```


And here is the encryption method in Ruby : 


```ruby

  alphabet = ('a'..'z').to_a
  codex = string.downcase.split('').map do |l|
    l != ' ' || l.scan(/[^A-Za-z0-9]/).length != 0  ? alphabet[(alphabet.find_index(l) + permutation_level) % 26 ] : l
  end
  
  return string.length == 0 ? string : codex.join('').upcase
```
