require_relative "../lib/source_reader"

RSpec.describe 'ソースファイル' do
  it 'がrbファイルか判別できる' do
    reader = Reader.new
    reader.source = File.read("../lib/source_reader.rb")
    expect(reader.has_ruby_script?).to eq true
  end
end
