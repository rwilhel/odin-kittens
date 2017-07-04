require 'rails_helper'

RSpec.describe Kitten, type: :model do
  before { @kitten = create(:kitten) }

  subject { @kitten }

  it { should be_valid }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:age) }
  it { should validate_presence_of(:cuteness) }
  it { should validate_presence_of(:softness) }
end
