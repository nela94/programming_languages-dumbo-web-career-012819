def reformat_languages(languages)
  new_hash = {}
  languages.each do |key, value|
    value.each do |language, info|
      if new_hash.key?(language)
         new_hash[language][:style] << key
      else
          new_hash[language] = info.merge!({:style => [key]})
      end
    end
  end
      new_hash
end
