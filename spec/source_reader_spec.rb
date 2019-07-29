require_relative "../lib/source_reader"

RSpec.describe '#has_ruby_script' do
  it 'がrbファイルならtrueを返す' do
    reader = Reader.new
    reader.source = "../lib/source_reader.rb"
    expect(reader.has_ruby_script?).to eq true
  end
  it 'がrbファイルでなければfalseを返す' do
    reader = Reader.new
    reader.source = "../.gitignore"
    expect(reader.has_ruby_script?).to eq false
  end
end
