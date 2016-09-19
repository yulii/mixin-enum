describe Mixin::Enum::Accessor do
  let(:subject_module) do
    Module.new do
      include Mixin::Enum::Accessor
      const_set(:REQUESTED,    1)
      const_set(:IN_PROGRESS,  2)
      const_set(:UNDER_REVIEW, 3)
      const_set(:APPROVED,     4)
      const_set(:REJECTED,     5)
      const_set(:CANCELLED,    6)
    end
  end

  describe '.values' do
    subject { subject_module.values }

    it 'returns all values' do
      is_expected.to contain_exactly(1, 2, 3, 4, 5, 6)
    end
  end

  describe '.all' do
    subject { subject_module.all }

    it 'returns a hash of defined enumerations' do
      is_expected.to match(
        REQUESTED:    1,
        IN_PROGRESS:  2,
        UNDER_REVIEW: 3,
        APPROVED:     4,
        REJECTED:     5,
        CANCELLED:    6
      )
    end
  end
end
