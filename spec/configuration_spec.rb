require 'spec_helper'

describe Pesamoni::Configuration do
  let(:config) { Pesamoni::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://pesamoni.com/api/live/v1")
    # Pesamoni.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://pesamoni.com/api/live/v1")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://pesamoni.com/api/live/v1")
      end
    end
  end
end
