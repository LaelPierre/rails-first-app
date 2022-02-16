class PagesController < ApplicationController

  def home
  end

  def about
    @members = %w[lael pierre gustave bryan arnault]

    if params[:member]
      @members = @members.select do |member|
        member.start_with?(params[:member])
      end
    end
  end

  def contact
  end
end
