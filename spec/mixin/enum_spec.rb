describe Mixin::Enum do
  it 'has a version number' do
    expect(Mixin::Enum::VERSION).not_to be nil
  end

  describe '.values' do
    subject { Status.values }

    it do
      is_expected.to contain_exactly(
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
    subject { Status.all }

    it do
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
