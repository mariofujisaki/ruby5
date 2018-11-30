require "./menu"

# Menuクラスを継承。Menuは親クラス、Foodが子クラス
class Food < Menu
  attr_accessor :calorie

  def initialize(name:, price:, calorie:)
    # nameとpriceはオーバーライドされているのでsuperで呼び出し
    super(name: name, price: price)
    self.calorie = calorie
  end

  def info
    return "#{self.name} #{self.price}円 (#{self.calorie}kcal)"
  end

  def calorie_info
    return "#{self.name}は#{self.calorie}kcalです"
  end
end
