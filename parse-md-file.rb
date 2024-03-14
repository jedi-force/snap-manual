#require 

outputFile = File.new("filename", "r")
all-lines = File.readlines(outputFile)
create_new_files()

def create_new_files():
    num = 0
    #File.foreach(file).with_index do |line, i|
    all-lines.each.with_index do |line, i|
        if line == "================="
            name = all-lines[i-1]
            num += 1
            chapter-content = <TEXT
                "---
                title: #{roman-numeral}. Chapter #{num}: #{name}
                layout: home
                has_children: true
                has_toc: false
                nav_order: #{num + 1}
                ---"
                TEXT>
            print(chapter-content)
        end
    end
end

