class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network network
    self.network = Network.create network
  end

  def actors_list
    self.actors.map &:full_name
  end

end