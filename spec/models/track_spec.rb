# == Schema Information
#
# Table name: tracks
#
#  id            :integer          not null, primary key
#  bytes         :integer
#  composer      :string
#  milliseconds  :integer
#  name          :string
#  unit_price    :float
#  created_at    :datetime
#  updated_at    :datetime
#  album_id      :integer
#  genre_id      :integer
#  media_type_id :integer
#
require 'rails_helper'

RSpec.describe Track, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject(:track) { Track.first }

  it "has a genre" do
    expect(track.genre.name).to eq("Rock")
  end

  it "has a album"
  it "has a mediatype"
  it "has playlists entries"
  it "has playlists through playlist entries"
end
