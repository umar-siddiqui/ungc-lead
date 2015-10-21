class CurrentGraphSerializer < ActiveModel::Serializer
  attributes :graph

  def graph
    object
  end
end
