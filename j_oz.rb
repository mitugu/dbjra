column_definitions = {
  :a1   => [ 0, 2 ],#場コード
  :a2   => [ 2, 2 ],#年
  :a3   => [ 4, 1 ],#回
  :a4   => [ 5, 1 ],#日
  :a5   => [ 6, 2 ],#レース
  :a6   => [ 10, 2 ],#登録頭数
  :a7   => [ 12, 18 ],#単勝オッズ
  :a8   => [ 30, 18 ],#複勝
  :a9   => [ 48, 153 ],#連勝オッズ
  :a10  => [ 201, 2 ],#改行






}
File.open("./PACI190310/OZ190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_oz/oz190310.csv", "w") do |fout|

    fin.each_line do |original|
      column_values = column_definitions.map{|column, range|
        "#{original.byteslice(range[0], range[1]).encode("UTF-8")}"
      }
      fout.puts column_values.join(",")
    end
  end
end
