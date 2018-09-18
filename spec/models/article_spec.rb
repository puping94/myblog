require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '.validate' do

    let(:article) { build(:article) }

    it "be valid" do
      expect(article).to be_valid
    end

    context "presence" do
      it { should validate_presence_of(:title).with_message("can't be blank")  }
    end

    context "length" do
      it { should validate_length_of(:title).is_at_most(64).with_message("is too long (maximum is 64 characters)")  }
      it { should validate_length_of(:summary).is_at_most(255).with_message("is too long (maximum is 255 characters)")  }
    end
  end
end