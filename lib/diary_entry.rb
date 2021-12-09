require 'database_connection'

class DiaryEntry
  def self.show_entries
    @connection = DatabaseConnection.setup('diary_manager')
    result = @connection.query("SELECT * FROM diary_table;")
    result.map do |bookmark| 
      "#{bookmark['title']} : #{bookmark['content']}"
    end
  end

  def self.add_entry(title, content)
    @connection = DatabaseConnection.setup('diary_manager')
    @connection.query("INSERT INTO diary_table VALUES('#{title}', '#{content}');")
  end
end