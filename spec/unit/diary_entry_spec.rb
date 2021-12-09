require 'diary_entry'

describe DiaryEntry do 
  describe '#show_entries' do 
    it 'returns a list of diary entries' do
      # DiaryEntry.show_entries
    end
  end
  describe '#add_entry' do 
    it 'adds a title and content into the diary table' do 
      DiaryEntry.add_entry('Monday', 'Went swimming')
      expect(DiaryEntry.show_entries).to include 'Monday : Went swimming'
    end
  end
end