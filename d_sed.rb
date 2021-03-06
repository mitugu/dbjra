column_definitions = {
  :d1   => [ 0, 2 ],#場コード
  :d2   => [ 2, 2 ],#年
  :d3   => [ 4, 1 ],#回
  :d4   => [ 5, 1 ],#日
  :d5   => [ 6, 2 ],#レース
  :d6   => [ 8, 2 ],#馬番
  :d7   => [ 10, 8 ],#血統登録番号
  :d8   => [ 18, 8 ],#年月日
  :d9   => [ 26, 36 ],#馬名
  :d10  => [ 62, 4],#距離
  :d11  => [ 66, 1 ],#芝ダ障害コード
  :d12  => [ 67, 1 ],#右左
  :d13  => [ 68, 1 ],#内外
  :d14  => [ 69, 2 ],#馬場状態
  :d15  => [ 71, 2 ],#種別
  :d16  => [ 73, 2 ],#条件
  :d17  => [ 75, 3 ],#記号
  :d18  => [ 78, 1 ],#重量
  :d19  => [ 79, 1 ],#グレード
  :d20  => [ 80, 50 ],#レース名
  :d21  => [ 130, 2 ],#頭数
  :d22  => [ 132, 8 ],#レース名略
  :d23  => [ 140, 2 ],#着順
  :d24  => [ 142, 1 ],#異常区分
  :d25  => [ 143, 4 ],#タイム
  :d26  => [ 147, 3 ],#斤量
  :d27  => [ 159, 12 ],#機種名
  :d28  => [ 171, 12 ],#調教師名
  :d29  => [ 183, 6 ],#確定単勝オッズ
  :d30  => [ 189, 2 ],#確定単勝オッズ人気順位
  :d31  => [ 191, 3 ],#IDM
  :d32  => [ 194, 3 ],#素点
  :d33  => [ 197, 3 ],#馬場差
  :d34  => [ 200, 3 ],#ペース
  :d35  => [ 203, 3 ],#出遅れ
  :d36  => [ 206, 3 ],#位置どり
  :d37  => [ 209, 3 ],#不利
  :d38  => [ 212, 3 ],#前不利
  :d39  => [ 215, 3 ],#中不利
  :d40  => [ 218, 3 ],#後不利
  :d41  => [ 221, 3 ],#レース
  :d42  => [ 224, 1 ],#コース取り
  :d43  => [ 225, 1 ],#上昇度
  :d44  => [ 226, 2 ],#クラスコード
  :d45  => [ 228, 1 ],#馬体
  :d46  => [ 229, 1 ],#気配
  :d47  => [ 230, 1 ],#レースペース
  :d48  => [ 231, 1 ],#馬ペース
  :d49  => [ 232, 5 ],#テン指数
  :d50  => [ 237, 5 ],#上がり指数
  :d51  => [ 242, 5 ],#ペース指数
  :d52  => [ 247, 5 ],#レースP指数
  :d53  => [ 252, 12 ],#１（２）着馬名
  :d54  => [ 264, 3 ],#１（２）着タイム差
  :d55  => [ 267, 3 ],#前３F
  :d56  => [ 270, 3 ],#後３F
  :d57  => [ 273, 24 ],#備考
  :d58  => [ 297, 2 ],#予備
  :d59  => [ 299, 6 ],#確定オッズ複勝下
  :d60  => [ 305, 6 ],#１０時単勝オッズ
  :d61  => [ 311, 2 ],#１０時複勝オッズ
  :d62  => [ 313, 2 ],#コーナー１
  :d63  => [ 315, 2 ],#コーナー２
  :d64  => [ 317, 2 ],#コーナー３
  :d65  => [ 319, 2 ],#コーナー４
  :d66  => [ 321, 3 ],#前３F先頭差
  :d67  => [ 323, 3 ],#後３F先頭差
  :d68  => [ 326, 5 ],#騎手コード
  :d69  => [ 331, 5 ],#調教師コード
  :d70  => [ 336, 3 ],#馬体重
  :d71  => [ 339, 3 ],#馬体重増減
  :d72  => [ 342, 1 ],#天候
  :d73  => [ 343, 1 ],#コース
  :d74  => [ 344, 1 ],#レース脚質
  :d75  => [ 345, 7 ],#単勝
  :d76  => [ 352, 7 ],#複勝
  :d77  => [ 359, 5 ],#本賞金
  :d78  => [ 364, 5 ],#収得賞金
  :d79  => [ 369, 2 ],#レースペース流れ
  :d80  => [ 371, 2 ],#馬ペース流れ
  :d81  => [ 373, 1 ],#４角コースどり
  :d82  => [ 374, 4 ],#予備
  :d83  => [ 378, 2 ],#改行




}
File.open("./SED_2017", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/d_sed/sed2017.csv", "w") do |fout|

    fin.each_line do |original|
      column_values = column_definitions.map{|column, range|
        "#{original.byteslice(range[0], range[1]).encode("UTF-8")}"
      }
      fout.puts column_values.join(",")
    end
  end
end
