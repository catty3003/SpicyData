json.array!(@references) do |reference|
  json.extract! reference, :id, :type_of_literatur, :first_author_name, :year, :title, :journal, :volume, :page_from, :page_to, :link, :matrix, :agent, :spiking, :treatment, :sample_prep, :detection, :tenacity, :r_comment, :user_id
  json.url reference_url(reference, format: :json)
end
