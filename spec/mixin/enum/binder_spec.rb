describe Mixin::Enum::Binder do
  subject do
    Class.new do
      include Mixin::Enum::Binder
    end
  end

  it { expect(subject.public_methods).to include(:unite) }

  describe '.unite' do
    let(:object) do
      {
        'NAME'     => 'mixin-enum',
        'HOMEPAGE' => 'https://github.com/yulii/mixin-enum'
      }
    end

    before do
      subject.unite(object)
    end

    it 'defines frozen constants' do
      expect(subject.const_get(:NAME)).to eq('mixin-enum')
      expect(subject.const_get(:NAME).frozen?).to eq(true)

      expect(subject.const_get(:HOMEPAGE)).to eq('https://github.com/yulii/mixin-enum')
      expect(subject.const_get(:HOMEPAGE).frozen?).to eq(true)
    end
  end
end
