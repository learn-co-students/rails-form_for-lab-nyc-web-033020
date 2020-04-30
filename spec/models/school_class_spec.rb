require 'rails_helper'

describe SchoolClassClass do
  before(:each) do
    @school_class = SchoolClassClass.create!(title: "Computer Science", room_number: 5)
  end

  it 'can be created' do
    expect(@school_class).to be_valid
  end

end