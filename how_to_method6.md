# How to Method3

方法３に関して、まとめる。

## 引用元
https://help.looker.com/hc/en-us/articles/360050104194-Methods-for-Period-Over-Period-PoP-Analysis-in-Looker

## 概要
分析では、現在の期間を含まない任意の2つの期間の比較が必要になることがあります。これはウェブ解析などの使用例に関連しており、例えば、次回のウェビナーの登録数を6ヶ月前の前回のウェビナーと比較する必要があります。課題は、日付範囲の日数が異なる場合があるため、開始日に基づいて期間を合わせる必要があることです。

## メリット・デメリット

### メリット
- この手の分析はGoogleアナリティクスユーザーには馴染みがあるので、同じようなユースケースで使うには最適な選択だと思います。

### デメリット
- 比較する日付範囲はどちらも手動で設定する必要があり、よりシンプルなPoP分析を期待しているユーザーにとっては、より遅く、より複雑に見えるかもしれません。
- 他にも、ユーザーが不満を感じる可能性のあるニュアンスが追加されています。
  - The first period must occur before the second period.
  - An additional filter is required to ensure that the 'First Period' and 'Second Period' labels are not null.
- Overlapping periods are not supported (this requires a join).

## グラフ作成手順（２つの選択した期間の比較）
1. 「PoP Method 3: PoP Method 6: Compare two arbitrary date ranges」のExploreを起動
2. First periodとSecond Periodをフィルター欄から任意の値に設定
3.　ディメンション「Period」をグラフに入れる。※比率を出したいときには、不要。
4.　比較したいメジャーを入れる
