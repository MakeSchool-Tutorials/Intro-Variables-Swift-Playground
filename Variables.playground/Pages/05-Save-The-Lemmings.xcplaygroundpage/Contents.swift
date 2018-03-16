/*:
 ![Make School Banner](./swift_banner.png)
 # レミングを救え

 新しいマイクロゲームを始めましょう。レミング(ネズミのような小動物)が画面中央の看板に向かって歩いていきます。看板に「危険」と書いていなければ、そのまま崖へ進み、落ちてしまします。

 あなたのミッションは看板に「危険」と表示して、レミングを救うことです。

 次のコードを見てください。`signText`という変数に`String`のデータタイプで`"This is not a sign."という値が設定されています。

*/

var signText: String = "This is not a sign."

/*:

 マイクロゲームを見ると、ダブルクオーテーション(`"`)の間の文字が看板に表れていることが分かります。

  - callout(やってみよう!): `signText`を修正して、看板に自分の名前を表示してみましょう。Stringデータの両側にダブルクオーテーション(`"`)を付けることを忘れずに！

*/



/*:

 上のコードに’signText = "あなたの名前"` と入力できていればOKです

 ここでも、これまでと同じように変数を設定しているのは変わりありませんが、今回はデータタイプに`Int`ではなく`String`を使っています。

 ## Stringというデータタイプ

 _String_ は単語や文章のようなデータタイプです。Stringは"Potato Salad"や "$100"、"yippie ki-yay!"といった文字の配列(文字のStringとも言う)なのです。Swiftでは、最初と最後にダブルクオーテーション(`"`)を付けて入力します。

  - note: 数字もStringとして扱われることがあるので注意しましょう。例えば、`"22"`はStringでありIntではありません。ダブルクオーテーションを外して`22`と入力すると、これはIntとなります。変数は一つの決まったデータタイプにしか対応できません。`signText`変数のデータタイプは`String`です。もし`String`変数に`Int`データを入力してしまうと、コンピューターが嫌がります。ここで実験をしてみましょう。コードにStringデータの`"22"`と入力すると、看板には期待通り「22」と表示されます。

*/



/*:

 ではダブルクオーテーションを外すとどうなるのでしょうか...

 ![](imgs/string_int_error.png)

 - note: 実験が済んだらダブルクオーテーションを戻すのを忘れずに！

 ## タイプエラー

    'Int'データタイプ値が見つけられません

 これは別のエラーです。Swiftではデータタイプの変更ができないため、データタイプを変更しようとしたところ、これにコンピューターが反応したのです。この変数のデータタイプはStringとして定められており、Intは使えません。


  - callout(チャレンジ):これまで学んだことを使って、看板に"Danger"と表示し、レミングが助かる様子を見てみましょう。

*/



/*:

## 頭の体操

 Stringの理解を深めるために、もうひとつだけ勉強しましょう。なかにダブルクオーテーションを含むStringの書き方を教えます。次のStringを看板に表示したいとします。

     ""Danger" zone"

 これを見るとすぐに、何だか分かりにくい、と感じるはずです。コンピューターもあなたと同じように感じます。果たしてこれはひとつのStringとして認識されるのでしょうか。最初と最後をダブルクオーテーションで挟まれたものがStringなので、これは2つのStringを示していることになります。

    ""

 と

    " zone"

そして何にも挟まれていない

    Danger

 は浮いています。Swiftでは次のようにしてこの問題を直すことができます。

    "\"Danger\" zone"

 上のテキストを`signText`変数に当てはめると、看板に表示されます。

*/



/*:

 ## エスケープ文字

 バックスラッシュとダブルクオーテーションの組み合わせ( `\"` )はStringのなかでは単なるダブルクオーテーション( `"` )として認識されます。Swiftではバックスラッシュの後には必ず文字が続く特別な構文として認識されるため、バックスラッシュをバックスラッシュとして入力したい時には2つ重ねます。( `\\` )

 ### ダブルクオーテーションは重要！

 最後に、Stringと変数は別物ということを忘れずに！ Dangerと "Danger"は全く別物です。

    Danger

 is different than writing:

    "Danger"

 - 重要：`signText`で見たように、変数は最初の設定次第で`String`のデータも保管できますが、保管するデータの種類を途中で変えることはできません。(例：`signText`は`String`のデータは保管できるが、’Int’のデータは保管できない。)

 次のチャレンジにいってみよう！

*/
//: [Previous](@previous) | [Next](@next)






































//: This is special code required to make the mini-game work. You do NOT need to understand it right now.
import PlaygroundSupport
let results = SaveTheLemmingsScene.setup(stringForSign: signText)
PlaygroundPage.current.liveView = results
