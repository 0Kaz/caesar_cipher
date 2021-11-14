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
