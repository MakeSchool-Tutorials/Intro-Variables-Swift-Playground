import Foundation
/*:
 ![Make School Banner](./swift_banner.png)
 # 時計を修理せよ

 ここでは、アナログ時計の3本の針をデジタル時計の時間に合わせることがあなたのミッションです。あなたの書いたコードは、フレームごとに時間、分、秒の値を新しく読み込みます。

 現在時刻は’時間’、’分’、’秒’の定数で構成されています。これらはそれぞれランダマイズされた `Double`のデータタイプを使っています。どうして `Double`を使うのか分かりますか？

 ここでは値をランダマイズするために、まだ教えていないコンセプトを使っていますが、心配することはありません。この後に続くチャレンジで関数を勉強すれば、きっと理解できるようになります。

*/

let hours: Double = Double(Int(arc4random()) % 12 + 1)
let minutes: Double = Double(Int(arc4random()) % 60)
let seconds: Double = Double(Int(arc4random()) % 60)
var hourRotation: Double = 0.0
var secondRotation: Double = 0.0
var minuteRotation: Double = 0.0

/*:

 ## どうしてDoubleのデータタイプを使うのか?

 ここまでは`Int` と `String`の2種類のデータタイプだけ使ってきましたね。`Int`は整数を使うときには大変便利ですが、少数を扱うことはできません。

 回転角度を定めるためには、少数を含む割り算結果を使う必要があります。こんな時には少数を扱える`Double`がピッタリです。

*/

let integerDivisionExample: Int = 15 / 4
let doubleDivisionExample: Double = 15 / 4

/*:

 ## Intの欠点

 `Int`は整数です。`Int`を`Int`で割った答えも`Int`として求めると、正確性が下がります。

 `integerDivisionExample`は15を4で割った答えを`Int`の形で保管しています。
 `doubleDivisionExample`は同じ式の答えを保管していますが、データの種類は`Double`です。
 `doubleDivisionExample`の値は正確ですが、`integerDivisionExample`の値は小数点以下(`0.75`)のデータを切り捨ててしまうので正確性に劣ります。


 ![](imgs/division_example.png)

 ## 時間の設定

 `secondRotation`, `minuteRotation`, `hourRotation`という3つの変数で時計の針の回転をコントロールします。

 - callout(やってみよう): より直感的に理解するため、値のどれかに0から360の間の数字を入力してみましょう。この値は12時の方向からの回転角度を示します。

    知らない人のために補足すると、角度は回転の度合いを測る単位です。ある物体が1回転する(最初の位置に戻る)角度は360度であり、その半分(最初と反対の向きになる)は180度となります。


    例えば、`secondRotation = 115`と設定するとこのように動きます。

    ![](imgs/115_seconds.png)

*/

secondRotation = 0

/*:

 ## 回転の計算

 針の回転幅を定めるために、コンピューターにこれから教える方程式を使った計算の指示を出し、回転幅を計算させます。まずは一緒に時間の針の設定を進めましょう。

 時間の針が回転すべき確度は次の方程式によって求められます。

    `hourRotation` は `hours` ワル12, カケル360度です。

 - note: 時間の針をデジタル時計の時間表示と同じ数字の方向に向けます。アナログ時計には全部で12の数字が書かれているので、1は一回転の1/12の位置にあるはずで、2は2/12の位置にあるはずです。すると`hours`の値の針は `hours/12`の位置にある、というルールがあることに気が付きます。1回転が360度なので、回転角度は360 x hours/12となるわけです。

 これをコードにするには、このように書きます。

    hourRotation = hours / 12 * 360

 Swiftでは*の記号は掛け算を、/は割り算を意味します。コンピューターサイエンスの世界では、これらの記号を「演算子」と呼びます。

 - callout(やってみよう): この方程式を使って`hourRotation`を設定し、デジタル時計の表示とあっているか確認しましょう。

*/



/*:

 残り2つの針の設定には次の方程式を使います。

    `secondRotation` は `seconds` ワル 60,カケル360度
     `minuteRotation` は`minutes` ワル 60, カケル360度

  - note: どちらの式にも`60` を使うのは、60秒で1分、60分で1時間だからです。
 */
/*:
 - callout(チャレンジ): さあ時計を修理しよう！

*/



/*:

 おめでとう！今回は難しかったけどうまくできましたね！変数、定数、データタイプ、演算子等、たくさんの新しいコンセプトを学びました。道具箱には既にたくさんの道具があるけれど、これからもっと増えますよ！

 このチャレンジはここまでです。次のチャレンジでは関数(コードのブロック)を学びます。関数を学ぶと自分で書いたコードを別の場面でもう一度使ったり、他の人が書いたコードを使ったりできるようになります！今回登場した値のランダマイズの謎も解けるはず :)

*/
//: [Previous](@previous)






































//: This is special code required to make the mini-game work. You do NOT need to understand it right now.
import PlaygroundSupport
let results = FixTheClockScene.setup(hours: Int(hours), minutes: Int(minutes), seconds: Int(seconds), hourRotation: Int(hourRotation), minuteRotation: Int(minuteRotation), secondRotation: Int(secondRotation))
PlaygroundPage.current.liveView = results
