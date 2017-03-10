require 'pry'
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = {}
  languages.each do |programming, language|
    language.each do |lang, type|
      new_hash[lang]
      type.each do |key, value|
        new_hash[lang] = {:type => value, :style => []}
        new_hash[lang][:style] << programming
      end
    end
    new_hash[:javascript][:style] << :oo
  end
  new_hash
end
