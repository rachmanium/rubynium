class HomeController < ApplicationController

  def index
    @besok = Date.tomorrow
    @bulan_depan = Date.today + 30.days
    @bulan_depan = 1.month.from_now
  end

end
