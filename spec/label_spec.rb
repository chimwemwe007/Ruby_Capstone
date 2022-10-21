require_relative '../classes/label'

describe Label do
  context 'instantiate Label object' do
    label = Label.new('Programming', 'Black')

    it 'should print labels title' do
      expect(label.title).to eq 'Programming'
    end

    it 'should print labels color' do
      expect(label.color).to eq 'Black'
    end
  end
end
