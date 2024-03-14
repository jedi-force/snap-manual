#require 

def create_new_files(all_lines)
    num, name, file, chapter_content = 0, "", "", ""
    #File.foreach(file).with_index do |line, i|
    all_lines.each.with_index do |line, i|
        if line.match?("=================")
            if name != ""
                f = File.open("ZZZ#{num}.md", "w")
                f.write(chapter_content)
            end
            name = all_lines[i-1]
            num += 1
            chapter_content = <<-TEXT
                ---
                title: #{num}. Chapter #{num}: #{name}
                layout: home
                has_children: true
                has_toc: false
                nav_order: #{num + 1}
                ---

                TEXT
        elsif line.match?("----------")
            if name != ""
                f = File.open("XXX#{num}.md", "w")
                f.write(chapter_content)
            end
            name = all_lines[i-1]
            num += 1
            chapter_content = <<-TEXT
                ---
                title: #{num} #{name}
                layout: home
                has_children: false
                has_toc: true
                nav_order: #{num + 1}
                ---

                TEXT
        else
            chapter_content += line
        end
    end
    puts name == ""
    puts name
end

outputFile = File.new("output.md", "r")
all_lines = File.readlines(outputFile)
create_new_files(all_lines)
