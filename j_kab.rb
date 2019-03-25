column_definitions = {
:code           => [ 0, 2 ],#場コード
:year           => [ 2, 2 ],#年
:the_time       => [ 4, 1 ],#回
:day            => [ 5, 1 ],#日
:nengappi       => [ 6, 8 ],#年月日
:kubun          => [ 14, 1 ],#馬番
:youbi          => [ 15, 2 ],#曜日
:keibajou       => [ 17, 4 ],#競馬場名
:tenkou         => [ 21, 1 ],#天候
:siba           => [ 22, 2 ],#芝状態
:sibauti        => [ 24, 1 ],#芝状態内
:sibanaka       => [ 25, 1 ],#芝状態中
:sibasoto       => [ 26, 1 ],#芝状態外
:sibabasa       => [ 27, 3 ],#芝馬場差
:babasaiuti     => [ 30, 2 ],#直線最内
:babauti        => [ 32, 2 ],#直線内
:babanaka       => [ 34, 2 ],#直線中
:babasoto       => [ 36, 2 ],#直線外
:babaoosoto     => [ 38, 2 ],#直線大外
:da             => [ 40, 2 ],#ダ馬場状態
:dauti          => [ 42, 1 ],#ダ内
:danaka         => [ 43, 1 ],#ダ中
:dasoto         => [ 44, 1 ],#ダ外
:dababasa       => [ 45, 3 ],#ダ馬場差
:de_ta          => [ 48, 1 ],#データ区分
:rennzoku       => [ 49, 2 ],#連続日数
:sibasyurui     => [ 51, 1 ],#芝種類
:take           => [ 52, 4 ],#芝丈
:tenatu         => [ 56, 1 ],#転圧
:touketu        => [ 57, 1 ],#凍結防止剤
:tyuukan        => [ 58, 5 ],#中間降水量
:yobi           => [ 63, 7 ],#予備
:kaigyou        => [ 70, 2 ],#改行




}
File.open("./PACI190310/KAB190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_kab/kab190310.csv", "w") do |fout|

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
