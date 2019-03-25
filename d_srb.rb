column_definitions = {
  :d1   => [ 0, 2 ],#場コード
  :d2   => [ 2, 2 ],#年
  :d3   => [ 4, 1 ],#回
  :d4   => [ 5, 1 ],#日
  :d5   => [ 6, 2 ],#レース
  :d6   => [ 8, 18 ],#ハロン
  :d7   => [ 26, 64 ],#１コーナー
  :d8   => [ 90, 64 ],#２コーナー
  :d9   => [ 154, 64 ],#３コーナー
  :d10  => [ 218, 64 ],#４コーナー
  :d11  => [ 282, 2 ],#ペースアップ位置
  :d12  => [ 284, 3 ],#１角
  :d13  => [ 287, 3 ],#２角
  :d14  => [ 290, 3 ],#向正
  :d15  => [ 293, 3 ],#３角
  :d16  => [ 296, 5 ],#４角
  :d17  => [ 301, 5 ],#直線
  :d18  => [ 306, 500 ],#レースコメント
  :d19  => [ 806, 8 ],#予備
  :d20  => [ 814, 2 ],#改行





}
File.open("./PACI190324/SRB190324.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/d_srb/srb190324.csv", "w") do |fout|

    fin.each_line do |original|
      column_values = column_definitions.map{|column, range|
        "#{original.byteslice(range[0], range[1]).encode("UTF-8")}"
      }
      fout.puts column_values.join(",")
    end
  end
end
