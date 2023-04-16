# frozen_string_literal: true

RSpec.describe Momo::Base do
  describe '#find_by_id' do
    class Vegetable < described_class
      @@data = [
        { id: 1, name: 'じゃが芋' },
        { id: 2, name: '玉ねぎ' },
        { id: 3, name: 'パセリ' }
      ]
    end

    subject { Vegetable.find_by_id(id) }

    context 'id=0の野菜を取得する場合' do
      let(:id) { 0 }

      it { expect(subject).to eq nil }
    end

    context 'id=1の野菜を取得する場合' do
      let(:id) { 1 }

      it do
        aggregate_failures do
          expect(subject.id).to eq 1
          expect(subject.name).to eq 'じゃが芋'
        end
      end
    end

    context 'id=2の野菜を取得する場合' do
      let(:id) { 2 }

      it do
        aggregate_failures do
          expect(subject.id).to eq 2
          expect(subject.name).to eq '玉ねぎ'
        end
      end
    end
  end
end
