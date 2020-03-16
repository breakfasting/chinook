require 'rails_helper'

RSpec.describe Album, type: :model do
  subject(:album) { Album.first }
  it "has tracks" do
    expect(album.tracks.count).to eq(10)
  end

  it "has artists" do
    expect(album.artist.name).to eq("AC/DC")
  end
end