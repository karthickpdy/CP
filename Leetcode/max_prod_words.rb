# # @param {String[]} words
# # @return {Integer}
# def max_product(words)
#     lookup = {}
#     words.each do |word|
#         word.each_char do |c|
#             if lookup[c]
#                 lookup[c] << word
#             else
#                 lookup[c] = [word]
#             end
#         end
#     end
#     # puts "#{lookup}"
#     lengths = []
#     words.each do |word|
#         list = []
#         word.each_char do |c|
#             list << lookup[c]
#         end
#         # puts "#{list}"
#         curr_list = words-list.flatten
#         # puts "#{word}  #{curr_list}"
#         max_val = curr_list.map{|a| a.length}.max || 0
#         lengths << word.length * max_val
#     end
#     lengths.max || 0
# end


def max_product(words)
    lookup = []
    words.each do |word|
        
    end
end