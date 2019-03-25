column_definitions = {
  :b1   => [ 0, 2 ],#場コード
  :b2   => [ 2, 2 ],#年
  :b3   => [ 4, 1 ],#回
  :b4   => [ 5, 1 ],#日
  :b5   => [ 6, 2 ],#レース
  :b6   => [ 8, 2 ],#登録頭数
  :b7   => [ 10, 153 ],#ワイド
  :b8   => [ 163, 3 ],#予備
  :b9   => [ 165, 2 ],#改行

}
File.open("./PACI190310/OW190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_ow/ow190310.csv", "w") do |fout|

    fin.each_line do |original|
      column_values = column_definitions.map{|column, range|
        "#{original.byteslice(range[0], range[1]).encode("UTF-8")}"
      }
      fout.puts column_values.join(",")
    end
  end
end
