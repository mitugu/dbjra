column_definitions = {
:a1           => [ 0, 2 ],#場コード
:a2           => [ 2, 2 ],#年
:a3           => [ 4, 1 ],#回
:a4           => [ 5, 1 ],#日
:a5           => [ 6, 8 ],#年月日
:a6           => [ 14, 1 ],#馬番
:a7           => [ 15, 2 ],#曜日
:a8           => [ 17, 4 ],#競馬場名
:a9           => [ 21, 1 ],#天候
:a10          => [ 22, 2 ],#芝状態
:a11          => [ 24, 1 ],#芝状態内
:a12          => [ 25, 1 ],#芝状態中
:a13          => [ 26, 1 ],#芝状態外
:a14          => [ 27, 3 ],#芝馬場差
:a15          => [ 30, 2 ],#直線最内
:a16          => [ 32, 2 ],#直線内
:a17          => [ 34, 2 ],#直線中
:a18          => [ 36, 2 ],#直線外
:a19          => [ 38, 2 ],#直線大外
:a20          => [ 40, 2 ],#ダ馬場状態
:a21          => [ 42, 1 ],#ダ内
:a22          => [ 43, 1 ],#ダ中
:a23          => [ 44, 1 ],#ダ外
:a24          => [ 45, 3 ],#ダ馬場差
:a25          => [ 48, 1 ],#データ区分
:a26          => [ 49, 2 ],#連続日数
:a27          => [ 51, 1 ],#芝種類
:a28          => [ 52, 4 ],#芝丈
:a29          => [ 56, 1 ],#転圧
:a30          => [ 57, 1 ],#凍結防止剤
:a31          => [ 58, 5 ],#中間降水量
:a32          => [ 63, 7 ],#予備
:a33          => [ 70, 2 ],#改行




}
File.open("./PACI190330/KAB190330.txt", "r", :encoding => "SJIS"
) do |fin|

  File.open("../data/j_kab/kab190330.csv", "w") do |fout|

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
puts "LOAD DATA LOCAL INFILE '../data/j_kab/kab190330.csv' INTO TABLE kabs FIELDS TERMINATED BY ',' LINES TERMINATED BY '\\n' (#{column_names_str});"
