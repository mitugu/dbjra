column_definitions = {
:code           => [ 0, 2 ],#場コード
:year           => [ 2, 2 ],#年
:the_time       => [ 4, 1 ],#回
:day            => [ 5, 1 ],#日
:race           => [ 6, 2 ],#レース
:umaban         => [ 8, 2 ],#馬番
:kettoutouroku  => [ 10, 8 ],#血統登録番号
:umamei         => [ 18, 36 ],#馬名
:ozzu           => [ 54, 5 ],#基準オッズ
:hukuozzu       => [ 59, 5 ],#基準複勝オッズ
:tyoukyou       => [ 64, 5 ],#CID調教素点
:kyuusya        => [ 69, 5 ],#CID厩舎素点
:soten          => [ 74 , 5 ],#CID素点
:cid            => [ 79, 3 ],#CID
:ls             => [ 82, 5 ],#LS指数
:lshyouka       => [ 87, 5 ],#LS評価
:em             => [ 92 , 1 ],#EM
:bbkyuusya      => [ 93, 1 ],#厩舎BB
:bbkyuusyatan   => [ 94, 5 ],#厩舎BB単勝回収率
:bbkyuusyaren   => [ 99, 5 ],#厩舎BB連対率
:bbkisyu        => [ 104, 1 ],#騎手
:bbkisyutan     => [ 105,  5 ],#騎手BB単勝回収率
:bbkisyuren     => [ 110, 5 ],#騎手BB連対率
:yobi           => [ 113, 3 ],#予備
:kaigyou        => [ 116, 2 ],#改行





}
File.open("./PACI190310/JOA190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_joa/joa190310.csv", "w") do |fout|

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
