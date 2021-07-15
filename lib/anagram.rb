require 'pry'

class Anagram

    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(array)
        # word must be broken down into array of letters -- done
        # array of letters must be sorted -- done
        # array of words must be broken down into array of word letters -- done
        # array of word letters must be mapped over to sort each element of word letters -- done
        # compare each element of sorted word letters to array of sorted letters -- done
        word_split_sorted = @word.split("").sort
        results = []
        array.collect do |element_word|
            if word_split_sorted == element_word.split("").sort
                results.push(element_word)
            end
        end
        results
    end
end

new_word = Anagram.new("listen")
new_word.match(["cat", "dog", "fish", "inlets"])
