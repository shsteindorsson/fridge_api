# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'should have a valid Factory' do
    expect(create(:product)).to be_valid
  end

  describe 'DB columns' do
    it { is_expected.to have_db_column :barcode }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :quantity }
    it { is_expected.to have_db_column :description }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :barcode }
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :quantity }
    it { is_expected.to validate_presence_of :description }
  end
end
