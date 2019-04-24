column_definitions = {
  :a1   => [ 0, 2 ],#場コード
  :a2   => [ 2, 2 ],#年
  :a3   => [ 4, 1 ],#回
  :a4   => [ 5, 1 ],#日
  :a5   => [ 6, 2 ],#レース
  :a6   => [ 8, 2 ],#登録頭数
  :a7   => [ 10, 306 ],#馬単オッズ
  :a8   => [ 316, 8 ],#予備
  :a9   => [ 324, 2 ],#改行

}
File.open("./PACI190330/OU190330.txt", "r", :encoding => "SJIS"
) do |fin|

  File.open("../data/j_ou/ou190330.csv", "w") do |fout|

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
