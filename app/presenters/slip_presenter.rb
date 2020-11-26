class SlipPresenter

  def initialize(slip)
    self.slip = slip
  end

  def call
    slip.as_json.merge(
        boat_id: slip.boat&.id,
        boat: slip.boat
    )
  end

  attr_accessor :slip #slip is a variable that is available to entire object
end
