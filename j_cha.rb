column_definitions = {
:a1  => [ 0, 2 ],#コード
:a2  => [ 2, 2 ],#年
:a3  => [ 4, 1 ],#回
:a4  => [ 5, 1 ],#日
:a5  => [ 6, 2 ],#レース
:a6  => [ 8, 2 ],#馬番
:a7  => [ 10, 2 ],#曜日
:a8  => [ 12, 8 ],#調教年月日
:a9  => [ 20, 1 ],#回数
:a10 => [ 21, 2 ],#調教コース
:a11 => [ 23, 1 ],#追い切り種類
:a12 => [ 24, 2 ],#追い切り状態
:a13 => [ 26 , 1 ],#乗り役
:a14 => [ 27, 1 ],#調教F
:a15 => [ 28, 3 ],#テンF
:a16 => [ 31, 3 ],#中間F
:a17 => [ 34, 3 ],#終いF
:a18 => [ 37, 3 ],#テンF指数
:a19 => [ 40, 3 ],#中間F指数
:a20 => [ 43, 3 ],#終いF指数
:a21 => [ 46, 3 ],#追い切り指数
:a22 => [ 49, 1 ],#併せ結果
:a23 => [ 50, 1 ],#追い切り種類
:a24 => [ 51, 2 ],#年齢
:a25 => [ 53, 2],#クラス
:a26 => [ 57, 7 ],#予備
:a27 => [ 64, 2 ],#改行






}
File.open("./PACI190407/CHA190407.txt", "r", :encoding => "SJIS"
) do |fin|

  File.open("../data/j_cha/cha190407.csv", "w") do |fout|

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
puts "LOAD DATA LOCAL INFILE '../data/j_cha/cha0407.csv' INTO TABLE chas FIELDS TERMINATED BY ',' LINES TERMINATED BY '\\n' (#{column_names_str});"
