module ApplicationHelper
  def prettify_text(text)
    result = ""
    text.split('\n').each do |block_of_text|
      result << "<p>#{block_of_text}</p>"
    end
    return result
  end
end
