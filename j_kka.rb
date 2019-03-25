column_definitions = {
:code           => [ 0, 2 ],#場コード
:year           => [ 2, 2 ],#年
:the_time       => [ 4, 1 ],#回
:day            => [ 5, 1 ],#日
:race           => [ 6, 2 ],#レース
:umaban         => [ 8, 2 ],#馬番
:jra            => [ 10, 12 ],#JRA成績
:kouryuu        => [ 22, 12 ],#交流成績
:sonota         => [ 34, 12 ],#他成績
:sibadasyougai  => [ 46, 12 ],#芝ダ障害別成績
:kyori          => [ 58, 12 ],#芝ダ障害距離別成績
:torakku        => [ 70, 12 ],#トラック成績
:ro_te          => [ 82 , 12 ],#ローテ成績
:mawari         => [ 94, 12 ],#回り成績
:kisyu          => [ 106, 12 ],#騎手成績
:ryou           => [ 118, 12 ],#良成績
:yayaomo        => [ 130 , 12 ],#稍重成績
:omo            => [ 142, 12 ],#重成績
:s              => [ 154, 12 ],#Sペース成績
:m              => [ 166, 12 ],#M成績
:h              => [ 178, 12 ],#L成績
:kisetu         => [ 190,  12 ],#季節成績
:waku           => [ 202, 12 ],#枠成績
:k_kyori        => [ 214, 12 ],#騎手距離成績
:k_torakku      => [ 226, 12 ],#騎手トラック成績
:k_tyoukyousi   => [ 238, 12 ],#騎手調教師成績
:k_umanusi      => [ 250 , 12 ],#騎手馬主成績
:k_burinka      => [ 262, 12 ],#騎手ブリンカ成績
:t_umanusi      => [ 274, 12 ],#調教師馬主成績
:titisibaren    => [ 286, 3 ],#父産駒芝連対率
:titidaren      => [ 289 , 3 ],#父産駒ダ連対率
:titirenkyori   => [ 292, 4 ],#父連対率平均距離
:hatisibaren    => [ 296, 3 ],#母父芝連対率
:hatidaren      => [ 299, 3 ],#母父ダ連対率
:hatirenkyori   => [ 302, 4 ],#母父距離連対率
:yozi           => [ 206,  16 ],#予備
:kaigyou        => [ 222, 2 ],#改行






}
File.open("./PACI190310/KKA190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_kka/kka190310.csv", "w") do |fout|

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
