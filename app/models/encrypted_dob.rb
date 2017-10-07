class EncryptedDob
  def load(value)
    return if value.nil?

    Marshal.load(
      Crypt.decrypt(
        Base64.decode64(value)))
  end

  def dump(value)
    unless value.is_a?(Date)
      value = cast_to_date(value)
    end
    Base64.encode64(
      Crypt.encrypt(
        Marshal.dump(value)))
  end
end
