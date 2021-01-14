class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :event, :pastry_id
      has_many :pastries

end
