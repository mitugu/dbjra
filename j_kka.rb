column_definitions = {
:a1           => [ 0, 2 ],#場コード
:a2           => [ 2, 2 ],#年
:a3           => [ 4, 1 ],#回
:a4           => [ 5, 1 ],#日
:a5           => [ 6, 2 ],#レース
:a6           => [ 8, 2 ],#馬番
:a7           => [ 10, 12 ],#JRA成績
:a8           => [ 22, 12 ],#交流成績
:a9           => [ 34, 12 ],#他成績
:a10          => [ 46, 12 ],#芝ダ障害別成績
:a11          => [ 58, 12 ],#芝ダ障害距離別成績
:a12          => [ 70, 12 ],#トラック成績
:a13          => [ 82 , 12 ],#ローテ成績
:a14          => [ 94, 12 ],#回り成績
:a15          => [ 106, 12 ],#騎手成績
:a16          => [ 118, 12 ],#良成績
:a17          => [ 130 , 12 ],#稍重成績
:a18          => [ 142, 12 ],#重成績
:a19          => [ 154, 12 ],#Sペース成績
:a20          => [ 166, 12 ],#M成績
:a21          => [ 178, 12 ],#L成績
:a22          => [ 190,  12 ],#季節成績
:a23          => [ 202, 12 ],#枠成績
:a24          => [ 214, 12 ],#騎手距離成績
:a25          => [ 226, 12 ],#騎手トラック成績
:a26          => [ 238, 12 ],#騎手調教師成績
:a27          => [ 250 , 12 ],#騎手馬主成績
:a28          => [ 262, 12 ],#騎手ブリンカ成績
:a29          => [ 274, 12 ],#調教師馬主成績
:a30          => [ 286, 3 ],#父産駒芝連対率
:a31          => [ 289 , 3 ],#父産駒ダ連対率
:a32          => [ 292, 4 ],#父連対率平均距離
:a33          => [ 296, 3 ],#母父芝連対率
:a34          => [ 299, 3 ],#母父ダ連対率
:a35          => [ 302, 4 ],#母父距離連対率
:a36          => [ 206,  16 ],#予備
:a37          => [ 222, 2 ],#改行






}
File.open("./PACI190330/KKA190330.txt", "r", :encoding => "SJIS"
) do |fin|

  File.open("../data/j_kka/kka190330.csv", "w") do |fout|

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
puts "LOAD DATA LOCAL INFILE '../data/j_kka/kka190330.csv' INTO TABLE kkas FIELDS TERMINATED BY ',' LINES TERMINATED BY '\\n' (#{column_names_str});"
