column_definitions = {
:code           => [ 0, 2 ],#場コード
:year           => [ 2, 2 ],#年
:the_time       => [ 4, 1 ],#回
:day            => [ 5, 1 ],#日
:race           => [ 6, 2 ],#レース
:umaban         => [ 8, 2 ],#馬番
:kettoutouroku  => [ 10, 8 ],#血統登録番号
:umamei         => [ 18, 36 ],#馬名

:idm            => [ 54, 5 ],#IDM
:kisyusisuu     => [ 59, 5 ],#騎手指数
:jouhousisuu    => [ 64, 5 ],#情報指数
:yobi1          => [ 69, 5 ],#予備１
:yobi2          => [ 74 , 5 ],#予備２
:yobi3          => [ 79, 5 ],#予備３
:sougou         => [ 84, 5 ],#総合指数
:kyakusitu      => [ 89, 1 ],#脚質
:kyoritekisei   => [ 90, 1 ],#距離適性
:jousyoudo      => [ 91, 1 ],#上昇度
:ro_te_syon     => [ 92, 3 ],#ローテーション

:ozzu           => [ 95, 5 ],#基準オッズ
:ozzutan        => [ 100, 2 ],#基準人気順位
:ozzuhuku       => [ 102, 5 ],#基準複勝オッズ
:ozzuhukuninnki => [ 107, 2 ],#基準複勝人気順位
:tokumarumaru   => [ 109, 3 ],#特定◎
:tokumaru       => [ 112, 3 ],#特定○
:tokukuro       => [ 115, 3 ],#特定▲
:tokusankaku    => [ 118, 3 ],#特定△
:tokubatu       => [ 121, 3 ],#特定×
:soumarumaru    => [ 124, 3 ],#総合◎
:soumaru        => [ 127, 3 ],#総合○
:soukuro        => [ 130, 3 ],#総合▲
:sousankaku     => [ 133, 3 ],#総合△
:soubatu        => [ 136, 3 ],#総合×
:ninnkisisuu    => [ 139, 5 ],#人気指数
:tyoukyousisuu  => [ 144, 5 ],#調教指数
:kyuusyasisuu   => [ 149, 5 ],#厩舎指数

:yazirusi       => [ 150, 1 ],#調教矢印
:kyuusyahyouka  => [ 151, 1 ],#厩舎評価
:kisyuren       => [ 152, 4 ],#騎手期待連対率
:gekisousisuu   => [ 156, 3 ],#激走指数
:hidume         => [ 159, 2 ],#蹄
:omotekisei     => [ 161, 1 ],#重適正
:kurasu         => [ 162, 2 ],#クラス
:yobi           => [ 164, 2 ],#予備

:burinnka       => [ 166, 1 ],#ブリンカー
:kisyumei       => [ 167, 12 ],#騎手名
:juuryou        => [ 179, 3 ],#負担重量
:minarai        => [ 182, 1 ],#見習い区分
:tyoukyousi     => [ 183, 12 ],#調教師名
:tyousyozoku    => [ 195, 4 ],#調教師所属
:zensou1        => [ 199, 16 ],#前走１競争成績キー
:zensou2        => [ 215, 16 ],#前走２競争成績キー
:zensou3        => [ 231, 16 ],#前走３競争成績キー
:zensou4        => [ 247, 16 ],#前走４競争成績キー
:zensou5        => [ 263, 16 ],#前走５競争成績キー
:re_suki1       => [ 279, 8 ],#前走１レースキー
:re_suki2       => [ 287, 8 ],#前走２レースキー
:re_suki3       => [ 295, 8 ],#前走３レースキー
:re_suki4       => [ 303, 8 ],#前走４レースキー
:re_suki5       => [ 311, 8 ],#前走５レースキー
:waku           => [ 319, 1 ],#枠順
:yobi           => [ 320, 2 ],#予備

:sousi          => [ 322, 1 ],#総合印
:idmsi          => [ 323, 1 ],#IDM印
:jouhousi       => [ 324, 1 ],#情報印
:kisyusi        => [ 325, 1 ],#騎手印
:kyuusyasi      => [ 326, 1 ],#厩舎印
:tyoukyousi     => [ 327, 1 ],#調教印
:gekisousi      => [ 328, 1 ],#激走印
:sibasi         => [ 329, 1 ],#芝適正
:dasi           => [ 330, 1 ],#ダ適正
:kisyuko_do     => [ 331, 5 ],#騎手コード
:tyoukyousi     => [ 336, 5 ],#調教師
:yobi2          => [ 341, 1 ],#予備

:a1   => [ 342, 6 ],#賞金クラス
:a2   => [ 348, 5 ],#収得賞金
:a3   => [ 353, 1 ],#条件クラス
:a4   => [ 354, 5 ],#テン指数
:a5   => [ 359, 5 ],#ペース指数
:a6   => [ 364, 5 ],#上がり指数
:a7   => [ 369, 5 ],#位置指数
:a8   => [ 374, 1 ],#ペース予想
:a9   => [ 375, 2 ],#道中順位
:a10  => [ 377, 2 ],#道中差
:a11  => [ 379, 1 ],#道中内外
:a12  => [ 380, 2 ],#後３F順位
:a13  => [ 382, 2 ],#後３F差
:a14  => [ 384, 1 ],#後３F内外
:a15  => [ 385, 2 ],#ゴール順位
:a16  => [ 387, 2 ],#ゴール差
:a17  => [ 389, 1 ],#ゴール内外
:a18  => [ 390, 1 ],#展開記号

:a19  => [ 391, 1 ],#距離適正
:a20  => [ 392, 3 ],#枠確定馬体重
:a21  => [ 395, 3 ],#枠確定馬体上下
:a22  => [ 398, 1 ],#取り消し
:a23  => [ 399, 1 ],#性別
:a24  => [ 400, 40 ],#馬主
:a25  => [ 440, 2 ],#馬主会
:a26  => [ 442, 2 ],#馬記号
:a27  => [ 444, 2 ],#激走順位
:a28  => [ 446, 2 ],#LS指数順位
:a29  => [ 448, 2 ],#テン指数順位
:a30  => [ 450, 2 ],#ペース指数順位
:a31  => [ 452, 2 ],#上がり指数順位
:a32  => [ 454, 2 ],#位置指数順位

:a33  => [ 458, 4 ],#騎手期待単勝率
:a34  => [ 462, 4 ],#騎手３着内率
:a35  => [ 466, 1 ],#輸送区分

:a36  => [ 467, 8 ],#走法
:a37  => [ 475, 24 ],#体型
:a38  => [ 499, 3 ],#体型１
:a39  => [ 502, 3 ],#体型２
:a40  => [ 505, 3 ],#体型３
:a41  => [ 508, 3 ],#馬特記１
:a42  => [ 511, 3 ],#馬特記２
:a43  => [ 514, 3 ],#馬特記３
:a44  => [ 517, 4 ],#スタート指数
:a45  => [ 521, 4 ],#出遅れ指数
:a46  => [ 525, 2 ],#参考前走
:a47  => [ 527, 5 ],#参考前走騎手
:a48  => [ 531, 3 ],#万馬券指数
:a49  => [ 534, 1 ],#万馬券印

:a50  => [ 535, 1 ],#降級
:a51  => [ 536, 2 ],#激走
:a52  => [ 538, 2 ],#休養
:a53  => [ 540, 16 ],#フラグ
:a54  => [ 556, 2 ],#入厩何走目
:a55  => [ 558, 8 ],#入厩年月日
:a56  => [ 566, 3 ],#入厩何日前
:a57  => [ 569, 50 ],#放牧先
:a58  => [ 619, 1 ],#放牧先ランク
:a59  => [ 620, 1 ],#厩舎ランク

:a60  => [ 621,  398 ],#予備
:a61  => [ 1019, 2 ],#改行






}
File.open("./PACI190310/KYI190310.txt", "r", encoding: 'utf-8'
) do |fin|

  File.open("../data/j_kyi/kyi190310.csv", "w") do |fout|

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
