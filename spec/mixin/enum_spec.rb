describe Mixin::Enum do
  it 'has a version number' do
    expect(Mixin::Enum::VERSION).not_to be nil
  end

  describe '.values' do
    it do
      expect(StatusCode.values).to contain_exactly(
        StatusCode::REQUESTED,
        StatusCode::IN_PROGRESS,
        StatusCode::UNDER_REVIEW,
        StatusCode::APPROVED,
        StatusCode::REJECTED,
        StatusCode::CANCELLED
      )
    end

    it do
      expect(Status.values.map(&:code)).to contain_exactly(
        Status::REQUESTED.code,
        Status::IN_PROGRESS.code,
        Status::UNDER_REVIEW.code,
        Status::APPROVED.code,
        Status::REJECTED.code,
        Status::CANCELLED.code
      )
    end

    it do
      expect(Status.values.map(&:text)).to contain_exactly(
        Status::REQUESTED.text,
        Status::IN_PROGRESS.text,
        Status::UNDER_REVIEW.text,
        Status::APPROVED.text,
        Status::REJECTED.text,
        Status::CANCELLED.text
      )
    end
  end

  describe '.all' do
    it do
      expect(StatusCode.all).to match(
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
