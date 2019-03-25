column_definitions = {
  :1   => [ 0, 5 ],#調教師コード
  :2   => [ 5, 1 ],#登録抹消
  :3   => [ 6, 8 ],#登録抹消年月日
  :4   => [ 14, 12 ],#調教師
  :5   => [ 26, 30 ],#調教師カナ
  :6   => [ 56, 6 ],#調教師名称略
  :7   => [ 62, 1 ],#所属コード
  :8   => [ 63, 4 ],#所属地域
  :9   => [ 67, 8 ],#生年月日
  :10  => [ 75, 4 ],#初免許
  :11  => [ 79, 40 ],#調教師コメント
  :12  => [ 119, 8 ],#コメント年月日
  :13  => [ 127, 3 ],#今年リーディング
  :14  => [ 130, 12 ],#今年平地成績
  :15  => [ 142, 12 ],#今年障害成績
  :16  => [ 154, 3 ],#今年特別勝利
  :17  => [ 157, 3 ],#今年重賞勝利
  :18  => [ 160, 3 ],#去年リーディング
  :19  => [ 163, 12 ],#去年平地成績
  :20  => [ 175, 12 ],#去年障害成績
  :21  => [ 187, 3 ],#去年特別勝利
  :22  => [ 190, 3 ],#去年重賞勝利
  :23  => [ 193, 20 ],#通算平地成績
  :24  => [ 213, 20 ],#通算障害成績
  :25  => [ 233, 8 ],#データ年月日
  :26  => [ 241, 29 ],#予備
  :27  => [ 270, 2 ],#改行







}
File.open("CZA190324.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("cza190324.csv", "w") do |fout|

    fin.each_line do |original|
      column_values = column_definitions.map{|column, range|
        "#{original.byteslice(range[0], range[1]).encode("UTF-8")}"
      }
      fout.puts column_values.join(",")
    end
  end
end