class BaseTrain
  attr_accessor :sub_type, :expert_ai_result, :trained_message

  def initialize(sub_type, expert_ai_result)
    self.sub_type = sub_type
    self.expert_ai_result = JSON.parse(expert_ai_result)
    self.trained_message = TrainedMessage.new
  end
end