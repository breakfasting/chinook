# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#
class Artist < ApplicationRecord

    has_many :albumss,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Album

    has_many :songs,
        through: :albums,
        source: :tracks

end
