class StaticController < ApplicationController
  def home
    # creating data arrays for selects
    @references = Reference.all
    @references_for_dropdown = []
    @references.each do |i|
      @references_for_dropdown << [i.first_author_name, i.id]
    end

    @matrices = Matrix.all
    @matrices_for_dropdown = []
    @matrices.each do |i|
      # class of dependent option must be equal to id of parent one
      @matrices_for_dropdown << [i.place_of_origin, i.id, {class: i.reference.id}]
    end
  end
end