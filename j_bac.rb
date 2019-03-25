column_definitions = {
:code               => [ 0, 2 ],#場コード
:year               => [ 2, 2 ],#年
:the_time           => [ 4, 1 ],#回
:day                => [ 5, 1 ],#日
:race               => [ 6, 2 ],#レース
:nenngappi          => [ 8, 8 ],#年月日
:hassouzikan        => [ 16, 4],#発走時間
:kyori              => [ 20, 4],#距離
:sibadasyougai      => [ 24, 1 ],#芝ダ障害
:migihidari         => [ 25, 1 ],#右左
:utisoto            => [ 26, 1 ],#内外
:syubetu            => [ 27, 2 ],#種別
:jouken             => [ 29 , 2 ],#条件
:kigou              => [ 31, 3 ],#記号
:weight             => [ 34, 1 ],#重量
:grade              => [ 35, 1 ],#グレード
:race_name          => [ 36, 50 ],#レース名
:kaisuu             => [ 86, 8],#回数
:tousuu             => [ 94, 2 ],#頭数
:ko_su              => [ 96, 1 ],#コース
:kaisaikubun        => [ 97, 1 ],#開催区分
:re_sumei9          => [ 98, 8],#レース名９文字
:re_sumeitansyuku   => [ 106, 18 ],#レース名短縮
:de_takubun         => [ 124, 1 ],#データ区分
:syoukin1           => [ 125, 5 ],#賞金１
:syoukin2           => [ 130, 5 ],#賞金２
:syoukin3           => [ 135, 5],#賞金３
:syoukin4           => [ 140, 5],#賞金４
:syoukin5           => [ 145, 5],#賞金５
:nyuutyaku1         => [ 150, 5 ],#入着１
:nyuutyaku2         => [ 155, 5 ],#入着２
:baken              => [ 160, 16 ],#馬券販売
:win5               => [ 176, 1 ],#win5
:yobi               => [ 177, 5 ],#予備
:kaigyou            => [ 182, 2 ],#改行





}
File.open("./PACI190310/BAC190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_bac/bac190310.csv", "w") do |fout|

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
