# 冷蔵庫モデルBクラス
# モデルAを継承する
require "./reizoko.rb"

# 既存の機能を上書きする
class ReizokoB < ReizoukoA
    #同名のメソッドがあればオーバーライドされる
    def cool_down
        @temperature -= 3
        puts "冷やす機能をPower Upしました"
        puts "現在の温度は #{@temperature} です"
    end
end

# 実行機能
if __FILE__ == $0 then
    reizokoB = ReizokoB.new(15)
    reizokoB.cool_down
    reizokoB.power(:off)
end