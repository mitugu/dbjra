column_definitions = {
:code            => [ 0, 2 ],#コード
:year            => [ 2, 2 ],#年
:the_time        => [ 4, 1 ],#回
:day             => [ 5, 1 ],#日
:race            => [ 6, 2 ],#レース
:umaban          => [ 8, 2 ],#馬番
:youbi           => [ 10, 2 ],#曜日
:tyoukyoubi      => [ 12, 8 ],#調教年月日
:kaisuu          => [ 20, 1 ],#回数
:tyoukyou_code   => [ 21, 2 ],#調教コース
:oikirituyosa    => [ 23, 1 ],#追い切り種類
:oi              => [ 24, 2 ],#追い切り状態
:noriyaku        => [ 26 , 1 ],#乗り役
:tyoukyou_f      => [ 27, 1 ],#調教F
:ten_f           => [ 28, 3 ],#テンF
:tyuukan_f       => [ 31, 3 ],#中間F
:simai_f         => [ 34, 3 ],#終いF
:tenfsisuu       => [ 37, 3 ],#テンF指数
:tyuukanfsisuu   => [ 40, 3 ],#中間F指数
:simaifsisuu     => [ 43, 3 ],#終いF指数
:oikirisisuu     => [ 46, 3 ],#追い切り指数
:awasekekka      => [ 49, 1 ],#併せ結果
:oikirisyurui    => [ 50, 1 ],#追い切り種類
:nennrei         => [ 51, 2 ],#年齢
:class           => [ 53, 2],#クラス
:youbi           => [ 57, 7 ],#予備
:kaigyou         => [ 64, 2 ],#改行






}
File.open("./PACI190310/CHA190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_cha/cha190310.csv", "w") do |fout|

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
