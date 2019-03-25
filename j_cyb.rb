column_definitions = {
:code              => [ 0, 2 ],#コード
:year              => [ 2, 2 ],#年
:the_time          => [ 4, 1 ],#回
:day               => [ 5, 1 ],#日
:race              => [ 6, 2 ],#レース
:umaban            => [ 8, 2 ],#馬番
:taipu             => [ 10, 2 ],#調教タイプ
:ko_su             => [ 12, 1 ],#調教コース
:saka              => [ 13, 2 ],#坂
:uddo              => [ 15, 2 ],#ウッド
:da_to             => [ 17, 2 ],#ダート
:siba              => [ 19, 2 ],#芝
:pu_ru             => [ 21 ,2 ],#プール
:syougai           => [ 23, 2 ],#障害
:pori              => [ 25, 2 ],#ポリトラック
:kyori             => [ 27, 1 ],#調教距離
:juuten            => [ 28, 1 ],#調教重点
:sisuu             => [ 29, 3 ],#追い切り指数
:siage             => [ 32, 3 ],#仕上げ指数
:hyoukaryou        => [ 35, 1 ],#調教量評価
:henka             => [ 36, 1 ],#仕上指数変化
:komento           => [ 37,  40 ],#調教コメント
:nenngetu          => [ 77, 8 ],#コメント年月日
:tyoukyouhyouka    => [ 85, 1 ],#調教評価
:yobi              => [ 86, 8 ],#予備
:kaigyou           => [ 94, 2 ],#改行





}
File.open("./PACI190310/CYB190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_cyb/cyb190310.csv", "w") do |fout|

    fin.each_line do |original|
      column_values = column_definitions.map{|column, range|
        "#{original.byteslice(range[0], range[1]).encode("UTF-8")}"
      }
      fout.puts column_values.join(",")
    end
  end
end

# print load data command (TODO: execute by mysql-cli in terminal directly, or fix this program)
column_names = column_definitions.map{|column, range|
  "#{column}"
}
column_names_str = column_names.join(",")
puts "LOAD DATA LOCAL INFILE './bac.csv' INTO TABLE bac FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (#{column_names_str});"
