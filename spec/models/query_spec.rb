require 'rails_helper'

RSpec.describe Query, type: :model do
  subject { build(:query, content: 'the total sum from Nintendo Switch') }

  it { is_expected.to be_valid }
  it { is_expected.to validate_presence_of(:content) }
end
