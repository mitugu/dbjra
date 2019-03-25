column_definitions = {
  :a1   => [ 0, 8 ],#血統番号
  :a2   => [ 8, 36 ],#馬名
  :a3   => [ 44, 1 ],#性別
  :a4   => [ 45, 2 ],#系色
  :a5   => [ 47, 2 ],#馬記号
  :a6   => [ 49, 36 ],#父馬名
  :a7   => [ 85, 36 ],#母馬名
  :a8   => [ 121, 36 ],#母父馬名
  :a9   => [ 157, 8 ],#生年月日
  :a10  => [ 165, 4 ],#父馬生年
  :a11  => [ 169, 4 ],#母馬生年
  :a12  => [ 173, 4 ],#母父馬生年
  :a13  => [ 177, 40 ],#馬主
  :a14  => [ 217, 2 ],#馬主コード
  :a15  => [ 219, 40 ],#生産者
  :a16  => [ 259, 8 ],#産地名
  :a17  => [ 267, 1 ],#登録抹消
  :a18  => [ 268, 8 ],#データ年月日
  :a19  => [ 276, 4 ],#父系統
  :a20  => [ 280, 4 ],#母父系統
  :a21  => [ 284, 6 ],#予備
  :a22  => [ 290, 2 ],#改行






}
File.open("./PACI190310/UKC190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_ukc/ukc190310.csv", "w") do |fout|

    fin.each_line do |original|
      column_values = column_definitions.map{|column, range|
        "#{original.byteslice(range[0], range[1]).encode("UTF-8")}"
      }
      fout.puts column_values.join(",")
    end
  end
end
