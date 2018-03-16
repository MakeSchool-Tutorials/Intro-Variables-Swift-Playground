import Foundation
/*:
 ![Make School Banner](./swift_banner.png)
 # ブロックくずしIII

 いよいよシリーズ最終章、ブロックくずしIIIです。このマイクロゲームは前のものと全く同じですが、強い向かい風が加わりました。

 ここでは風のエネルギーがブロックのエネルギーから引き算されます。つまり、風のエネルギーが4でブロックの’force’が6だとすると、最終的なブロックの’force’は2となります。(`6 - 4 = 2`であるため)

 あらかじめ風の’force’が分かれば、それに合わせてブロックの’force’を調整できそうですね。つまり、風の’force’が4の場合、最終的なブロックの’force’を6としたいので、設定する値は10となるわけです。(`10 - 4 = 6`となるため)

 - note: 風の’force’の値はwindForceという定数に保存されています。その定数のコードがこちら。

 */

let windForce: Int = Int(arc4random()) % 25 + 50

/*:

 残念ながら`let windForce: Int = 4`のようなシンプルなものではありませんでした。`let windForce: Int = Int(arc4random()) % 25 + 50`は何だか難しそう。でも大丈夫、もうすぐ分かるようになります。それまでは「風のforceは50から74の間のランダムな値をとる」と覚えておいてください。

  `windForce`はゲームのプログラムが実行するたびに(もしくはコードを書き替えるたびに)変わるため、特定の値には固定されません。

 Playgroundでは、式の値はコードの右側に表示されます。

 ![](imgs/random.png)

 上のスクリーンショットではwindForce の値が’64’であることが分かります。(画面の右端を見てください) この値はゲームのプログラムが実行するたびに(もしくはコードを書き替えるたびに)変わります。下のstop/playボタンを押すと、手動でPlaygroundのプログラムを実行できます。


 ![](imgs/toggle_run.gif)

 ## どうすればいいの？

 `windForce`は常に変化しているので、ブロックのforceはもともとの`force`+ `windForce`と定義します。下の行に`+ windForce`を追加してみましょう。


*/

let force: Int = 80

/*:

 ## うまくいった？

 上手くいったでしょうか。もしも思うように動かない場合は上のコードが`let force: Int = 80 + windForce`となっていることを確かめましょう。コンピューターが正確に読み取るためには、プラス記号の前後の空欄はそろってなければいけません。 (片方だけに空欄を入れるとうまくいきません)

 さて、このコードはどういう意味なのでしょうか？どうしてこれでうまくいったのでしょうか？
 
 このコードを読み上げると、"`force`という定数の `Int`で示される値は`80`と `windForce`の合計値である"となります。ここですごいのは、風のforceの値が分からないままで良いということです。(80 は「ブロックくずしII」で設定された任意の値です)

 またこのコードは、"force定数の値が、計算式の等記号の右側にある値と等しくなるように設定する" とも解釈できます。そして、ここでいう「計算式」を"80とwindForce変数の和"とするのです。

  - メモ: プラス記号は、数字の変数を組み合わせた計算式を組み立てるのにとても便利な演算子です。他にも、引き算は`-` 、割り算は`/`、掛け算は`*`を使います。計算の順序を定義するためにカッコを使うこともできます。なお、`(x) y`と入力しても(x)とyの掛け算にはなりませんので注意しましょう。掛け算は必ず’*’を使い、(x)*yもしくはx*yと表記します。

*/
//: [Previous](@previous) | [Next](@next)






































//: This is special code required to make the mini-game work. You do NOT need to understand it right now.
import PlaygroundSupport
let results = CrushTheBlockIIIScene.setup(forceToApply: force, windSpeed: windForce)
PlaygroundPage.current.liveView = results
