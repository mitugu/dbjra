column_definitions = {
:a1  => [ 0, 2 ],#場コード
:a2  => [ 2, 2 ],#年
:a3  => [ 4, 1 ],#回
:a4  => [ 5, 1 ],#日
:a5  => [ 6, 2 ],#レース
:a6  => [ 8, 8 ],#年月日
:a7  => [ 16, 4],#発走時間
:a8  => [ 20, 4],#距離
:a9  => [ 24, 1 ],#芝ダ障害
:a10 => [ 25, 1 ],#右左
:a11 => [ 26, 1 ],#内外
:a12 => [ 27, 2 ],#種別
:a13 => [ 29 , 2 ],#条件
:a14 => [ 31, 3 ],#記号
:a15 => [ 34, 1 ],#重量
:a16 => [ 35, 1 ],#グレード
:a17 => [ 36, 50 ],#レース名
:a18 => [ 86, 8],#回数
:a19 => [ 94, 2 ],#頭数
:a20 => [ 96, 1 ],#コース
:a21 => [ 97, 1 ],#開催区分
:a22 => [ 98, 8],#レース名９文字
:a23 => [ 106, 18 ],#レース名短縮
:a24 => [ 124, 1 ],#データ区分
:a25 => [ 125, 5 ],#賞金１
:a26 => [ 130, 5 ],#賞金２
:a27 => [ 135, 5],#賞金３
:a28 => [ 140, 5],#賞金４
:a29 => [ 145, 5],#賞金５
:a30 => [ 150, 5 ],#入着１
:a31 => [ 155, 5 ],#入着２
:a32 => [ 160, 16 ],#馬券販売
:a33 => [ 176, 1 ],#win5
:a34 => [ 177, 5 ],#予備
:a35 => [ 182, 2 ],#改行





}
File.open("./PACI190406/BAC190406.txt", "r", :encoding => "SJIS"
) do |fin|

  File.open("../data/j_bac/bac190406.csv", "w") do |fout|

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
puts "LOAD DATA LOCAL INFILE '../data/j_bac/bac190406.csv' INTO TABLE bacs FIELDS TERMINATED BY ',' LINES TERMINATED BY '\\n' (#{column_names_str});"

a1_map = {
  "06" => "中山",
}
puts a1_map ["06"]
