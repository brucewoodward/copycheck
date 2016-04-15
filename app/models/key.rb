require 'securerandom'

class Key

  def self.generate
    SecureRandom.urlsafe_base64(23)
  end

end
