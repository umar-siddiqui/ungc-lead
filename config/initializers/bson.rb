# Overring BSON::ObjectiID as_json to return string id
module BSON
  # ObjectiID
  class ObjectId
    def as_json(*)
      to_s
    end
  end
end