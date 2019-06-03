class Show < ActiveRecord::Base

  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(call_letters)
    network = Network.create(call_letters)
    self.network = network
  end

end

#
# t.string :call_letters
# # the above breaks down to
# # "create a column called :call_letters on table t with type string
# t.integer :channel
