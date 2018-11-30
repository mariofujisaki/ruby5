# Dateクラスの読み込み(DateクラスはRubyがすでに用意しているクラス)
require "date"

class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    return "#{self.name} #{self.price}円"
  end

  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price -= 100
    end

    # get_total_priceのインスタンスメソッドの中で、クラスメソッドis_discount_day?を呼び出すことも出来る
    # 注文が1個以上かつMenu.is_discount_day?の結果がtrueである時、100円引きになるように
    if count >= 1 && Menu.is_discount_day?
      total_price -= 100
    end
    return total_price
  end

# Menuクラスのクラスメソッドis_discount_day?メソッドの中で、変数todayを定義
  def Menu.is_discount_day?
    # 今日の日付のDateクラスのインスタンスを代入
    today = Date.today
    return today.sunday?
  end
end
