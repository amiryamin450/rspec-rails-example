require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject {
    described_class.new(
      first_name: "Foo",
      last_name: "Bar",
      email: "someemail@example.com",
      phone: "+923217992779",
      address: "123 main street"
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end
end
