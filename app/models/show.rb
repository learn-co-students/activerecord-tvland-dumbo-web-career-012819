class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(name)
    new_network = Network.create(name)
    self.network = new_network
  end
end
