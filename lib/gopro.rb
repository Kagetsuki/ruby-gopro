require_relative 'gopro/hero'
require_relative 'gopro/bacpac'
require_relative 'gopro/camera'

class GoPro
  attr_accessor :hero, :bacpac, :camera
  def initialize(hero_info = nil)
    hero =  Hero.new(hero_info)
    bacpac = BacPac.new
    camera = Camera.new
  end
end
