describe Mixin::Enum do
  it 'has a version number' do
    expect(Mixin::Enum::VERSION).not_to be nil
  end

  describe '.enum_struct' do
    it do
      expect(Map.const_defined?(:EnumStruct)).to be true
    end
  end

  describe '.values' do
    it do
      expect(Status.values).to contain_exactly(
        Status::REQUESTED,
        Status::IN_PROGRESS,
        Status::UNDER_REVIEW,
        Status::APPROVED,
        Status::REJECTED,
        Status::CANCELLED
      )
    end

    it do
      expect(Map.values.map(&:code)).to contain_exactly(
        Status::REQUESTED,
        Status::IN_PROGRESS,
        Status::UNDER_REVIEW,
        Status::APPROVED,
        Status::REJECTED,
        Status::CANCELLED
      )
    end
  end

  describe '.all' do
    it do
      expect(Status.all).to match(
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
