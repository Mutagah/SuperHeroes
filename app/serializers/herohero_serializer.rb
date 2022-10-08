class HeroheroSerializer < ActiveModel::Serializer
  attributes :id, :name, :super_name, :gender
  has_many :powers
end