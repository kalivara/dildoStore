# frozen_string_literal: true

class Dildo
  attr_reader :available
  attr_accessor :name

  def initialize(name:, material:, available: true)
    @name = name
    @material = material
    @available = available
  end

  def fire_safe?
    material != 'wood'
  end

  def glorious_name?
    roman_emperors_names.include? name
  end

  private

  attr_accessor :material, :size

  def roman_emperors_names
    %w[Augustus Tiberius Caligula Claudius Nero Titus Trajan MarcusAurelius]
  end
end
