require_relative '../classes/game'

describe Game do
  context 'instantiate game object' do
    game = Game.new('2017-09-14', true, '2022-08-08')

    it 'should print the publish date' do
      expect(game.publish_date).to eq '2017-09-14'
    end

    it 'should print multiplayer boolean' do
      expect(game.multiplayer).to eq true
    end

    it 'should print last played date' do
      expect(game.last_played_at).to eq '2022-08-08'
    end
  end
end
