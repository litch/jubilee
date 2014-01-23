module Jubilee
  class Server < PlatformManager
    def initialize(app, opts = {})
      options = {Host: "0.0.0.0", Port: 8080, ssl: false}.merge(opts)
      if (options[:ssl]) && options[:ssl_keystore].nil?
          raise ArgumentError, "Please provide a keystore for ssl"
      end
      # back compatible
      if app
        options[:rackapp] = app
      end
      super(options)
    end

    def start
    end

    def stop
    end
  end
end
