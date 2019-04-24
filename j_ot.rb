column_definitions = {
  :a1   => [ 3, 6 ],#賞金クラス
  :a2   => [ 3, 5 ],#収得賞金
  :a3   => [ 3, 1 ],#条件クラス
  :a4   => [ 3, 5 ],#テン指数
  :a5   => [ 3, 5 ],#ペース指数
  :a6   => [ 3, 5 ],#上がり指数
  :a7   => [ 3, 5 ],#位置指数
  :a8   => [ 3, 1 ],#ペース予想
  :a9   => [ 3, 2 ],#道中順位
  :a10  => [ 3, 2 ],#道中差
  :a11  => [ 3, 1 ],#道中内外
  :a12  => [ 3, 2 ],#後３F順位
  :a13  => [ 3, 2 ],#後３F差
  :a14  => [ 3, 1 ],#後３F内外
  :a15  => [ 3, 2 ],#ゴール順位
  :a16  => [ 3, 2 ],#ゴール差
  :a17  => [ 3, 1 ],#ゴール内外
  :a18  => [ 3, 1 ],#展開記号
  :a19  => [ 3, 1 ],#距離適正
  :a20  => [ 3, 3 ],#枠確定馬体重
  :a21  => [ 3, 3 ],#枠確定馬体上下
  :a22  => [ 3, 1 ],#取り消し
  :a23  => [ 3, 1 ],#性別
  :a24  => [ 3, 3 ],#馬主
  :a25  => [ 3, 2 ],#馬主会
  :a26  => [ 3, 2 ],#馬記号
  :a27  => [ 3, 2 ],#激走順位
  :a28  => [ 3, 2 ],#LS指数順位
  :a29  => [ 3, 2 ],#テン指数順位
  :a30  => [ 3, 2 ],#ペース指数順位
  :a31  => [ 3, 2 ],#上がり指数順位
  :a32  => [ 3, 2 ],#位置指数順位
  :a33  => [ 3, 4 ],#騎手期待単勝率
  :a34  => [ 3, 4 ],#騎手３着内率
  :a35  => [ 3, 1 ],#輸送区分
  :a36  => [ 3, 8 ],#走法
  :a37  => [ 3, 3 ],#体型
  :a38  => [ 3, 3 ],#体型１
  :a39  => [ 3, 3 ],#体型２
  :a40  => [ 3, 3 ],#体型３
  :a41  => [ 3, 3 ],#馬特記１
  :a42  => [ 3, 3 ],#馬特記２
  :a43  => [ 3, 3 ],#馬特記３
  :a44  => [ 3, 4 ],#スタート指数
  :a45  => [ 3, 4 ],#出遅れ指数
  :a46  => [ 3, 2 ],#参考前走
  :a47  => [ 3, 5 ],#参考前走騎手
  :a48  => [ 3, 3 ],#万馬券指数
  :a49  => [ 3, 1 ],#万馬券印
  :a50  => [ 3, 1 ],#降級
  :a51  => [ 3, 2 ],#激走
  :a52  => [ 3, 2 ],#休養
  :a53  => [ 3, 3 ],#フラグ
  :a54  => [ 3, 2 ],#入厩何走目
  :a55  => [ 3, 8 ],#入厩年月日
  :a56  => [ 3, 3 ],#入厩何日前
  :a57  => [ 3, 3 ],#放牧先
  :a58  => [ 3, 1 ],#放牧先ランク
  :a59  => [ 3, 1 ],#厩舎ランク
  :a60  => [ 3, 3 ],#予備
  :a61  => [ 3, 2 ],#改行





}
File.open("./PACI190330/OT190330.txt", "r", :encoding => "SJIS"
) do |fin|

  File.open("../data/j_ot/ot190330.csv", "w") do |fout|

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
puts "LOAD DATA LOCAL INFILE '../data/j_ot/ot190330.csv' INTO TABLE ots FIELDS TERMINATED BY ',' LINES TERMINATED BY '\\n' (#{column_names_str});"
