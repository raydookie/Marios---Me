# t.string :status
# t.string :complete
# t.integer :votes
# t.string :first_name
# t.string :last_name
# t.string :title

class LeaderboardController < ApplicationController
  def index
    @entries = Leaderboard.paginate(:page => params[:page,], :order => "votes desc")
  end

  def import
  end
  
  def import_csv
    import_file = params[:dump][:file]
    Leaderboard.destroy_all
    
    FasterCSV.parse(import_file.read).each do |row|
      l = Leaderboard.new
      l.status = row[3]
      l.complete = row[4]
      l.votes = row[5]
      l.first_name = row[7]
      l.last_name = row[8]
      l.title = row[10]
      
      l.save
    end
    redirect_to root_url
  end
end
