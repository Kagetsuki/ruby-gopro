class GoPro
  class BacPac

    def initialize(hero)
      @hero = hero
    end

    def pw(mode = :on)
      case mode
        when :on
          req('PW', '%01')
        when :off
          req('PW', '%00')
        else
          req('PW', mode.to_s)
      end
    end
    alias_method :power, :pw

    private

    def req(function, mode)
      @hero.req('bacpac', function, mode)
    end
  end
end
