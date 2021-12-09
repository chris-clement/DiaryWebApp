require 'database_connection'

describe DatabaseConnection do
  describe '#setup' do 
    it 'connects to a database' do 
      expect(PG).to receive(:connect)
      DatabaseConnection.setup('diary_manager')
    end
  end
  describe '#query' do
    it 'runs a sequel query' do 
      connection = DatabaseConnection.setup('diary_manager')
      expect(connection).to receive(:exec).with("SELECT * FROM diary_table;")
      DatabaseConnection.query("SELECT * FROM diary_table;")
    end
  end
end