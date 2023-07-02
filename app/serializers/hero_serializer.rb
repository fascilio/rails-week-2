class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :super_name, :powers

  def powers
    object.powers.map do |power|
      {
        id: power.id,
        name: power.name,
        description: power.description
      }
    end
  end
end
