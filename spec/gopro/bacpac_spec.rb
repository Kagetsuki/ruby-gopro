require 'spec_helper'

describe GoPro::BacPac do
  let(:bacpac) do
    GoPro::BacPac.new(GoPro::Hero.new(ENV['TOKEN']))
  end

  describe 'pw' do
    it 'cycles power' do
      sleep(2)
      expect(bacpac.pw(:on)).to eq 200
      sleep(2)
      expect(bacpac.pw(:off)).to eq 200
      sleep(2)
      expect(bacpac.pw(:on)).to eq 200
    end
  end
end
