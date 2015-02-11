class HomesController < ApplicationController
  def show
    @ip = request.remote_ip
    @ip2 = Socket.ip_address_list.find { |ai| ai.ipv4? && !ai.ipv4_loopback? }.ip_address
    # @location = Geocoder::Result.location
  end
end
