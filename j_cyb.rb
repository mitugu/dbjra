column_definitions = {
:a1           => [ 0, 2 ],#コード
:a2           => [ 2, 2 ],#年
:a3           => [ 4, 1 ],#回
:a4           => [ 5, 1 ],#日
:a5           => [ 6, 2 ],#レース
:a6           => [ 8, 2 ],#馬番
:a7           => [ 10, 2 ],#調教タイプ
:a8           => [ 12, 1 ],#調教コース
:a9           => [ 13, 2 ],#坂
:a10          => [ 15, 2 ],#ウッド
:a11          => [ 17, 2 ],#ダート
:a12          => [ 19, 2 ],#芝
:a13          => [ 21 ,2 ],#プール
:a14          => [ 23, 2 ],#障害
:a15          => [ 25, 2 ],#ポリトラック
:a16          => [ 27, 1 ],#調教距離
:a17          => [ 28, 1 ],#調教重点
:a18          => [ 29, 3 ],#追い切り指数
:a19          => [ 32, 3 ],#仕上げ指数
:a20          => [ 35, 1 ],#調教量評価
:a21          => [ 36, 1 ],#仕上指数変化
:a22          => [ 37,  40 ],#調教コメント
:a23          => [ 77, 8 ],#コメント年月日
:a24          => [ 85, 1 ],#調教評価
:a25          => [ 86, 8 ],#予備
:a26          => [ 94, 2 ],#改行





}
File.open("./PACI190420/CYB190420.txt", "r", :encoding => "SJIS"
) do |fin|

  File.open("../data/j_cyb/cyb190420.csv", "w") do |fout|

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
puts "LOAD DATA LOCAL INFILE '../data/j_cyb/cyb190420.csv' INTO TABLE cybs FIELDS TERMINATED BY ',' LINES TERMINATED BY '\\n' (#{column_names_str});"
