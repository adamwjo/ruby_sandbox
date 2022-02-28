class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_membership

  def total_membership
    object.memberships.sum(:charge)
  end

end
