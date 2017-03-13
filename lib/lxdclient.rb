require "lxdclient/version"
require 'net_http_unix'
require 'openssl'
require 'json'
require 'logger'


module LxdClient
  # Helper Class to talk to LXD daemon
  class Client
    def initialize(uri)
      @log = Logger.new(STDOUT)
      @uri = URI(uri)
    end

    def client
      client = NetX::HTTPUnix.new(@uri.hostname, @uri.port)
      if @uri.scheme == 'https'
        key = File.read("#{Dir.home}/.config/lxc/client.key")
        crt = File.read("#{Dir.home}/.config/lxc/client.crt")
        client.use_ssl = true
        #FIXME: See if we can use remote's cert as CA to Peer
        client.verify_mode = OpenSSL::SSL::VERIFY_NONE
        client.key = OpenSSL::PKey::RSA.new(key)
        client.cert = OpenSSL::X509::Certificate.new(crt)
        #client.ciphers = 'TLSv1.2:!aNULL:!eNULL'
        #@log.info("PORT: #{@uri.port} HOST: #{@uri.hostname}")
      end
      client
    end

    def list_containers
      req = NetX::HTTPUnix::Get.new('/1.0/containers')
      resp = client.request(req)
      resp.body
    end
  end
end
