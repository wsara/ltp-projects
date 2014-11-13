#start the program with an array holding all of the information
#(chapter names, page numbers and so on)
#then print the array in a beautifully formatted table of contents

# title = "Table of Contents"
# line_width = 20
# ch1 = "Chapter 1:   Getting Started"
# pg1 = "page  1"
# ch2 = "Chapter 2:   Numbers"
# pg2 = "page  9"
# ch3 = "Chapter 3:   Letters"
# pg3 = "page 13"

# puts title.center(50)
# puts ch1.ljust(30) + pg1.rjust(20)
# puts ch2.ljust(30) + pg2.rjust(20)
# puts ch3.ljust(30) + pg3.rjust(20)

# puts "Table of Contents".center(50)
# table = [ "Chapter 1:   Getting Started", "page  1", 
# 					"Chapter 2:   Numbers", "page  9",
# 					"Chapter 3:   Letters", "page 13"
# ]

# puts table[0].ljust(30) + table[1].rjust(20)
# puts table[2].ljust(30) + table[3].rjust(20)
# puts table[4].ljust(30) + table[5].rjust(20)

#-------

# chapters = [ "Chapter 1:   Getting Started",
# 						 "Chapter 2:   Numbers",
# 						 "Chapter 3:   Letters",
# ]

# page_numbers = [1, 9, 13]

# puts "Table of Contents".center(50)
# chapters.each_with_index do |chapter, index|
# 	puts chapter.ljust(30) + "page #{page_numbers[index]}".rjust(20)
# end

#-------

title = "Table of Contents"

chapters = [['Getting Started', 1],
						['Numbers', 9],
						['Letters', 13]
]

puts title.center(50)
puts
chapters.each_with_index do |chapter, index|
	name, page = chapter  #this is breaking the array into the name and page items somehow
	chap_num = index + 1
	beginning = "Chapter #{chap_num}: #{name}"
	ending = "page #{page}"
	puts beginning.ljust(30) + ending.rjust(20)
end