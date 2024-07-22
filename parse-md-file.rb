# Constants for conversion
$INCH_TO_PIXEL = 96

$chapter_subsections = ["Hat Blocks and Command Blocks", "Introduction to Color", "Crayons and Color Numbers", "Perceptual Spaces: HSV and HSL", "Mixing Colors", "tl;dr", "Subappendix: Geeky Details on Fair Hue", "Subappendix: Geeky Details on Color Numbers", "Boolean Values", "Scalar Functions", "Mixed Functions", "Higher Order Functions"]
$path = "C:/Users/victo/snap-manual/test/"

def parse_toc(index_file)
  toc = []
  current_chapter = nil
  current_section = nil

  File.foreach(index_file) do |line|
    
    case line
    when /^#(.*)$/
      toc.append(line)
    end
  #     #current_chapter += line #{ title: $1.strip, sections: [] }
  #     #toc << current_chapter
  #   when /^## (.*)$/
  #     current_section = #{ title: $1.strip, subsections: [] }
  #     #current_chapter << current_section if current_chapter
  #   when /^### (.*)$/
  #     #current_section << $1.strip if current_section
  #   end
  # end
  end
  return toc
end

def inch_to_pixel(inch)
  (inch.to_f * $INCH_TO_PIXEL).round
end

def convert_image_dimensions(line)
  line.gsub(/!\[\]\(([^)]+)\)\{width="([\d.]+)in" height="([\d.]+)in"\}/) do
    image_path = $1
    width_in_inch = $2.to_f
    height_in_inch = $3.to_f
    width_in_px = inch_to_pixel(width_in_inch)
    height_in_px = inch_to_pixel(height_in_inch)
    "<img src=\"/snap-manual/assets/images/#{File.basename(image_path)}\" style=\"width:#{width_in_px}px; height:#{height_in_px}px\">"
  end
end

def remove_hashtags(string)
  # Use gsub to replace hashtags followed by a space with an empty string
  string = string.gsub(/#+\s*/, '')
  string = string.gsub("\n", '')
  return string
end

def create_new_files(all_lines)
  num, name, file, chapter_content = 0, "", "", ""
  current_chapter_title = ""
  chapter_num = 0
  section_content, section_num = "", 0
  write_chapter = false
  write_section = false
  intialize = true
  chapter_filename = ""
  section_filename = ""
  all_lines.each_with_index do |line, i|

    if line.match?(/width="([\d.]+)in"/) || line.match?(/height="([\d.]+)in"/)
      line = convert_image_dimensions(line)
    end

    $toc.each_with_index do |section|
      no_hash_section = remove_hashtags(section)
      if section.match?(/^(\# )/) && line.include?(no_hash_section)
        puts "Line include no hash?: #{line.include?(no_hash_section)}"
        puts line
        puts "\n" 
        if not(intialize) and chapter_filename != ""
          File.open($path + chapter_filename, "w") { |f| f.write(chapter_content) }
        end
        intialize = false
        current_chapter_title = no_hash_section
        chapter_filename = "C#{chapter_num}.md"
        write_chapter = true
        write_section = false
        num += 1
        chapter_num += 1
        chapter_content = <<-TEXT
---
title: Chapter #{chapter_num}. #{current_chapter_title}
layout: home
has_children: true
has_toc: true
nav_order: #{num + 1}
---

TEXT
        puts current_chapter_title
        #File.open($path + chapter_filename, "w") { |f| f.write(chapter_content) }
        break
      

      elsif section.match?(/\#\# /) && line.include?(no_hash_section)
        if section_filename != ""
          File.open($path + section_filename, "w") { |f| f.write(section_content) }
        end
        section_num += 1
        section_title = no_hash_section
        section_filename = "C#{chapter_num}-S#{section_num}.md"
        section_num += 1
        write_section = true
        write_chapter = false
        name = all_lines[i-1].gsub(/!\[.*\]\(.*\)\{.*\}/, '').strip
        num += 1
        section_content = <<-TEXT
---
title: #{section_num}. #{section_title}
layout: home
has_children: false
has_toc: true
nav_order: #{num + 1}
parent: #{current_chapter_title}
---

TEXT
        #File.open($path + section_filename, "w") { |f| f.write(section_content) }
        break

      # elsif section.include?("###")
      #   if $chapter_subsections.include?(no_hash_section)
      #     chapter_content += "#{no_hash_section}"
      #   else
      #     section_content += "#{no_hash_section}"
      #   end
      end
    
    end
  
    
    if line.match?("---------") or line.match?("==============")
      puts line
    elsif write_chapter
      chapter_content += line
    elsif write_section
      section_content += line
    end
  end
  
end

outputFile = File.new("output2.md", "r")
all_lines = File.readlines(outputFile)
$toc = parse_toc("toc.txt")
create_new_files(all_lines)
