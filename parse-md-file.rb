INCH_TO_PIXEL = 96

index_file = "index.md"
output_file = "output2.md"

def parse_toc(index_file)
  toc = []
  current_chapter = nil
  current_section = nil

  File.foreach(index_file) do |line|
    case line
    when /^# (.*)$/
      current_chapter = { title: $1.strip, sections: [] }
      toc << current_chapter
    when /^## (.*)$/
      current_section = { title: $1.strip, subsections: [] }
      current_chapter[:sections] << current_section if current_chapter
    when /^### (.*)$/
      current_section[:subsections] << $1.strip if current_section
    end
  end

  toc
end

toc = parse_toc(index_file)
all_lines = File.readlines(output_file)

def create_new_files(all_lines, toc)
  current_chapter = nil
  current_section = nil
  current_subsection = nil
  chapter_content = ""
  section_content = ""

  toc.each_with_index do |chapter, chapter_index|
    current_chapter = chapter[:title]
    chapter_filename = "C#{chapter_index + 1}.md"
    chapter_content = <<-TEXT
---
title: #{current_chapter}
layout: home
has_children: true
has_toc: false
nav_order: #{chapter_index + 1}
---

TEXT

    section_content = ""
    subsection_content = ""

    all_lines.each_with_index do |line, i|
      line = convert_image_dimensions(line) if line.match?(/width="([\d.]+)in"/) || line.match?(/height="([\d.]+)in"/)

      if line.match(/^# #{Regexp.quote(current_chapter)}/)
        next_line = all_lines[i + 1]
        if next_line && next_line.match(/^## /)
          current_section = chapter[:sections].find { |section| next_line.include?(section[:title]) }
        end
        next
      elsif current_section && line.match(/^## #{Regexp.quote(current_section[:title])}/)
        section_filename = "C#{chapter_index + 1}-Sec#{chapter[:sections].index(current_section) + 1}.md"
        section_content = <<-TEXT
---
title: #{current_section[:title]}
layout: home
parent: #{current_chapter}
has_children: #{current_section[:subsections].any?}
has_toc: true
nav_order: #{chapter[:sections].index(current_section) + 1}
---

TEXT
        next_line = all_lines[i + 1]
        if next_line && next_line.match(/^### /)
          current_subsection = current_section[:subsections].find { |sub| next_line.include?(sub) }
        end
        next
      elsif current_subsection && line.match(/^### #{Regexp.quote(current_subsection)}/)
        subsection_content = <<-TEXT
---
title: #{current_subsection}
layout: home
parent: #{current_section[:title]}
grand_parent: #{current_chapter}
has_toc: false
nav_order: #{current_section[:subsections].index(current_subsection) + 1}
---

TEXT
        section_content += subsection_content
        next
      end

      if current_subsection
        section_content += line
      elsif current_section
        section_content += line
      else
        chapter_content += line
      end
    end

    File.open(chapter_filename, "w") { |f| f.write(chapter_content) }

    chapter[:sections].each_with_index do |section, section_index|
      section_filename = "C#{chapter_index + 1}-Sec#{section_index + 1}.md"
      File.open(section_filename, "w") { |f| f.write(section_content) }
    end
  end
end

def convert_image_dimensions(line)
  line.gsub!(/width="([\d.]+)in"/) do |match|
    pixels = inch_to_pixel($1)
    "width=\"#{pixels}\""
  end
  line.gsub!(/height="([\d.]+)in"/) do |match|
    pixels = inch_to_pixel($1)
    "height=\"#{pixels}\""
  end
  line
end

def inch_to_pixel(inch)
  (inch.to_f * INCH_TO_PIXEL).round
end

create_new_files(all_lines, toc)
