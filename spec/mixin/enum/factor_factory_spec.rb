describe Mixin::Enum::FactorFactory do
  subject { Mixin::Enum::FactorFactory }

  it { expect(subject.public_methods).to  include(:create) }
  it { expect(subject.private_methods).to include(:new, :allocate, :build) }

  describe '.create' do
    context 'with empty members' do
      subject { Mixin::Enum::FactorFactory.create {} }

      it { is_expected.to be_an_instance_of(Mixin::Enum::Factor::Object) }
    end

    context 'with some members' do
      subject { Mixin::Enum::FactorFactory.create(:code, :name) {} }

      it { is_expected.to be_an_instance_of(Mixin::Enum::Factor::Struct) }
    end
  end
end
