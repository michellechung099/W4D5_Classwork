def first_anagram?(word_1, word_2)
    word_1.chars.permutation.to_a.include?(word_2.chars)
end

def anagram_recursion(word)
    return [word] if word.length <= 1
    sub_anagram = anagram_recursion(word[0..-2])
    new_anagrams = []
    sub_anagram.each do |sub_arr|
        (0..sub_arr.length).each do |i|
            new_anagrams << sub_arr.dup.insert(i, word[-1])
        end
    end

    # word.chars.each.with_index do |char, i|
    #     new_word = word[0...i] + word[i + 1..-1]
    #     new_anagrams << ([char] + anagram_recursion(new_word))
    # end
    new_anagrams
end


# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

# p anagram_recursion('giz')

# Phase IV
def fourth_anagram?(word_1, word_2)
    counts = Hash.new(0)
    word_1.chars.each do |char|
        counts[char] += 1
    end
    word_2.chars.each do |char2|
        counts[char2] -= 1
    end
    counts.values.all? { |value| value == 0 }
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true
