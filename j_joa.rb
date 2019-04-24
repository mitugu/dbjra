column_definitions = {
:a1         => [ 0, 2 ],#場コード
:a2         => [ 2, 2 ],#年
:a3         => [ 4, 1 ],#回
:a4         => [ 5, 1 ],#日
:a5         => [ 6, 2 ],#レース
:a6         => [ 8, 2 ],#馬番
:a7         => [ 10, 8 ],#血統登録番号
:a8         => [ 18, 36 ],#馬名
:a9         => [ 54, 5 ],#基準オッズ
:a10        => [ 59, 5 ],#基準複勝オッズ
:a11        => [ 64, 5 ],#CID調教素点
:a12        => [ 69, 5 ],#CID厩舎素点
:a13        => [ 74 , 5 ],#CID素点
:a14        => [ 79, 3 ],#CID
:a15        => [ 82, 5 ],#LS指数
:a16        => [ 87, 5 ],#LS評価
:a17        => [ 92 , 1 ],#EM
:a18        => [ 93, 1 ],#厩舎BB
:a19        => [ 94, 5 ],#厩舎BB単勝回収率
:a20        => [ 99, 5 ],#厩舎BB連対率
:a21        => [ 104, 1 ],#騎手
:a22        => [ 105,  5 ],#騎手BB単勝回収率
:a23        => [ 110, 5 ],#騎手BB連対率
:a24        => [ 113, 3 ],#予備
:a25        => [ 116, 2 ],#改行





}
File.open("./PACI190330/JOA190330.txt", "r", :encoding => "SJIS"
) do |fin|

  File.open("../data/j_joa/joa190330.csv", "w") do |fout|

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
puts "LOAD DATA LOCAL INFILE '../data/j_joa/joa190330.csv' INTO TABLE joas FIELDS TERMINATED BY ',' LINES TERMINATED BY '\\n' (#{column_names_str});"
