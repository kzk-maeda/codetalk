json.set! :talks do
    json.array! @talks do |talk|
      json.extract! talk, :id, :lang, :lang_version, :code, :result, :created_at, :updated_at
    end
  end