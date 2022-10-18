require_relative '../classes/label'
require_relative '../classes/item'

describe Label do
    context 'When testing the label class' do
        it 'Should create a label' do
            label = Label.new(1, 'African History', 'green')
            expect(label.title).to eq('African History')
            expect(label.color).to eq('green')
        end

        it 'Should be an instance of Label' do
            label = Label.new(1, 'African History', 'green')
            expect(label).to be_an_instance_of(Label)
        end

        it 'Should implement add_item method' do
            label = Label.new(1, 'African History', 'green')
            expect(label).to respond_to(:add_item)
        end

        it 'Should implement items method' do
            label = Label.new(1, 'African History', 'green')
            expect(label).to respond_to(:items)
        end

        it 'Should add item to the instance' do
            label = Label.new(1, 'African History', 'green')
            item = Item.new(1, Date.parse('1999-04-07'))
            label.add_item(item)
            expect(label.items.length).to eq 1
          end
    end
end
