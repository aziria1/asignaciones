line_width = 42

puts "Insert a  Chapter and a Page"
chapter_page = []

done = false
while !done

  chapter_name = gets.chomp
  page_name = gets.chomp
  chapter_page.push [chapter_name, page_name]
  puts "another one? (yes/no)"
  if gets.chomp == "no"
    done = true
  end

end

puts "Table of Content".center( line_width )
puts "=" * line_width
chapter_page.each do |chap|
  chapter_name = chap[0]
  page_name = chap[1]
  puts chapter_name + page_name.rjust(line_width - chapter_name.length)
end
