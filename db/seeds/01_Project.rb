# frozen_string_literal: true

# Adding Dummy projects Projects
tags = ["インターンシップ", "イベント/ミートアップ", "働く・住む", "体験する",]

tags.each do |tag|
  new_tag = ActsAsTaggableOn::Tag.find_by(name: tag) || ActsAsTaggableOn::Tag.create!(name: tag)
  puts "Generating and Storing tag id:- #{new_tag.id}"
end

prefectures = [
    "北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県", "茨城県", "栃木県", "栃木県",
    "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県",
    "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "兵庫県", "兵庫県",
    "鳥取県", "島根県", "岡山県", "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
    "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"
]

prefectures.each do |prefecture|
  new_prefecture= ActsAsTaggableOn::Tag.find_by(name: prefecture) || ActsAsTaggableOn::Tag.create!(name: prefecture)
  puts "Generating and Storing prefecture id:- #{new_prefecture.id}"
end

titles = [
    "地域で学びたい人のための「田舎で人生考える～気づく・学ぶ　しあわせふくい',
    '体験～」　おすすめの滞在プランをご紹介",
    "地域とのつながりを、一歩前へ。オンラインコミュニティ',
    '「シモカワベアーズラボ」を始めます！",
    "地域との【10/18(sun)開催】「移住はしたいけど、地域に馴染めるか不',
    '安…」そんな方に向けたオンラインイベント開催！",
    "地域との＼オンラインでも／マッチング率６０％以上の富山県朝日町空き家・空',
    'き地情報あなたの気になる「空き物件」、ご案内いたします。",
    "やまがた庄内「里山×里海」若者ダイアログ ― ゲストハウスづくりとシェアハ',
    'ウスを拠点とし，Withコロナの生きかたを考える。―",
    "仙モネ両29京園長タホレユ島塗2属オカヒノ陽図ラわ示座ゆあ人許づよざが',
    '軽夜や済間ヘソクロ百確備ロ畿細ぼ額年ーおぐべ政告つでぱ告断キマヒレ政外ドぴこス芸災はかー",
    "仙モネ両29京園長タホレユ島塗2属オカヒノ陽図ラわ示座ゆあ人許づよざが軽夜や済間',
    'ヘソクロ百確備ロ畿細ぼ額年ーおぐべ政告つでぱ告断キマヒレ政外ドぴこス芸災はかー",
    "丸ユヘヒロ績俣ネ情訪ぞれき航上コ治面ト面時ユワアシ座43介すらで絵中ヌ悩更題ひきゃ',
    '放惑テユウミ需氷コサワヱ影講チ仕視ふにル座経ートせく総就宣や",
    "福島県史上最長！オールふくしま！",
    "開催！スペシャルトークセッション",
    "求人票ではわからない、地方企業の魅力",
    "県内企業に自ら赴き、直接経営者や",
    "長年移住相談を受けてきた経験か",
    "長年「移住はしたいけど、地域に馴染めるか不安…」",
    "今だからこそ、聞いておきたい！先輩移住者トーク",
    "やまがた庄内「里山×里海」若者ダイアログ ",
    "Withコロナの生きかたを考える。―",
    "いてみたいことをより気軽に聞いてみてくださいね！",
    "供ス名枝ルス別若際や画日きひあみ社探ふご見遊ク究央ネヒウ争改ヱ事',
    '思ミユテア申公ニネサ鈴井件イゅざ着朝オエシ投9策ウアキ根報羽護応がにけ",
    "11月１日限定でLINEチャットによる「何でも相談室」",
    "長年＼注目２／市町村などに直接相談できる！オンライン個別相談",
    "供ス― ゲストハウスづくりとシェアハウスを拠点とし，",
]

descriptions = [
  "<p>紅抑ウアルノ権台育へふン紙申わ断気ク転次フら弁治ぐ送連ヤリナネ写窃ぱ図辺コイ市目にふ医有6提モホヒム碁要オモ賞渡ロヌハ夜場くンレに強畿はだ一運路ねごぽそ。談ひぼトー能戦よ更減広批ホチカ激68仰巣毅0投療ふッごそ暮式73仰巣毅1秀ユヒサメ講記下値年すおぴょ。無ラサロワ国年憲ず島老げ金燈みりフ県作のつ莉優タマクラ正芸れ様権ラサケリ得棋らフー情勢セホミヨ付要レムセオ退新げにぎど吾意ソマカ電喫羅踊ごえざべ。</p><p>勢読ょづぼ同続6手ーょね故小ふー員年トエヱニ見内ラテエヌ面添セシワネ末波じ情野へフご割招ク身旅マト汚取えと上大無アス属表ヘミツ月投へ容街でっむ案答ンみぎ開婦ぴぞ。17護すめけさ月腹ラ緊玲ヒネセエ買交リ所4周向型む臨示ワアク禁式本ラ起貼去口おへる所差へやけ校連トぜリぱ能9月せじい芸危国申乗く。</p>",
  "<div><h2>什么是Lorem Ipsum?</h2><p>Lorem Ipsum，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，”Leatraset”公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件”Aldus PageMaker”也通过同样的方式使Lorem Ipsum落入大众的视野。</p></div><div class='mt-4 row'> <div class='col-md-6 mb-2'> <img class='col-md-12 m-0 p-0' src='/assets/image%202.png'><span class='project-sub-image-title'>「田舎暮らしモデルハウス」里山でいなか暮らし体験</span> </div> <div class='col-md-6 mb-2'> <img class='col-md-12 m-0 p-0' src='/assets/image%202.png'><span class='project-sub-image-title'>「田舎暮らしモデルハウス」里山でいなか暮らし体験</span> </div></div><div> <h2>我们为何用它？</h2> <p>无可否认，当读者在浏览一个页面的排版时，难免会被可阅读的内容所分散注意力。Lorem Ipsum的目的就是为了保持字母多多少少标准及平均的分配，而不是“此处有文本，此处有文本”，从而让内容更像可读的英语。如今，很多桌面排版软件以及网页编辑用Lorem Ipsum作为默认的示范文本，搜一搜“Lorem Ipsum”就能找到这些网站的雏形。这些年来Lorem Ipsum演变出了各式各样的版本，有些出于偶然，有些则是故意的（刻意的幽默之类的）。な活動や地方での生活ができるの</p></div>",
  "<p>紅抑ウアルノ権台育へふン紙申わ断気ク転次フら弁治ぐ送連ヤリナネ写窃ぱ図辺コイ市目にふ医有6提モホヒム碁要オモ賞渡ロヌハ夜場くンレに強畿はだ一運路ねごぽそ。談ひぼトー能戦よ更減広批ホチカ激68仰巣毅0投療ふッごそ暮式73仰巣毅1秀ユヒサメ講記下値年すおぴょ。無ラサロワ国年憲ず島老げ金燈みりフ県作のつ莉優タマクラ正芸れ様権ラサケリ得棋らフー情勢セホミヨ付要レムセオ退新げにぎど吾意ソマカ電喫羅踊ごえざべ。</p><p> 勢読ょづぼ同続6手ーょね故小ふー員年トエヱニ見内ラテエヌ面添セシワネ末波じ情野へフご割招ク身旅マト汚取えと上大無アス属表ヘミツ月投へ容街でっむ案答ンみぎ開婦ぴぞ。17護すめけさ月腹ラ緊玲ヒネセエ買交リ所4周向型む臨示ワアク禁式本ラ起貼去口おへる所差へやけ校連トぜリぱ能9月せじい芸危国申乗く。な活動や地方での生活ができるの</p>",
  "<div><h2>它起源于哪里？</h2> <p>恰恰与流行观念相反，Lorem Ipsum并不是简简单单的随机文本。它追溯于一篇公元前45年的经典拉丁著作，从而使它有着两千多年的岁数。弗吉尼亚州Hampden-Sydney大学拉丁系教授Richard McClintock曾在Lorem Ipsum段落中注意到一个涵义十分隐晦的拉丁词语，“consectetur”，通过这个单词详细查阅跟其有关的经典文学著作原文，McClintock教授发掘了这个不容置疑的出处。Lorem Ipsum始于西塞罗(Cicero)在公元前45年作的“de Finibus Bonorum et Malorum”（善恶之尽）里1.10.32 和1.10.33章节。这本书是一本关于道德理论的论述，曾在文艺复兴时期非常流行。Lorem Ipsum的第一行”Lorem ipsum dolor sit amet..”节选于1.10.32章节。</p> <p>以下展示了自1500世纪以来使用的标准Lorem Ipsum段落，西塞罗笔下“de Finibus Bonorum et Malorum”章节1.10.32 ， 1.10.33的原著作，以及其1914年译自H. Rackham的英文版本。 </p></div><div class='mt-4 row'> <div class='col-md-6 mb-2'> <img class='col-md-12 m-0 p-0' src='/assets/image%202.png'><span class='project-sub-image-title'>「田舎暮らしモデルハウス」里山でいなか暮らし体験</span> </div> <div class='col-md-6 mb-2'> <img class='col-md-12 m-0 p-0' src='/assets/image%202.png'><span class='project-sub-image-title'>「田舎暮らしモデルハウス」里山でいなか暮らし体験</span> </div></div><div> <h2>我能从哪里获取？</h2> <p>如今互联网提供各种各样版本的Lorem Ipsum段落，但是大多数都多多少少出于刻意幽默或者其他随机插入的荒谬单词而被篡改过了。如果你想取用一段Lorem Ipsum，请确保段落中不含有令人尴尬的不恰当内容。所有网上的Lorem Ipsum生成器都倾向于在必要时重复预先准备的部分，然而这个生成器则是互联网上首个确切的生成器。它使用由超过200个拉丁单词所构造的词典，结合了几个模范句子结构，来生成看起来恰当的Lorem Ipsum。因此，生成出的结果无一例外免于重复，刻意的幽默，以及非典型的词汇等等。</p> <form method='post' action='/feed/html'> <table style='width:100%'> <tbody> <tr> <td rowspan='2'><input type='text' name='amount' value='5' size='3' id='amount'></td> <td rowspan='2'> <table style='text-align:left'> <tbody> <tr> <td style='width:20px'><input type='radio' name='what' value='paras' id='paras' checked='checked'></td> <td><label for='paras'>段落</label></td> </tr> <tr> <td style='width:20px'><input type='radio' name='what' value='words' id='words'></td> <td><label for='words'>单词</label></td> </tr> <tr> <td style='width:20px'><input type='radio' name='what' value='bytes' id='bytes'></td> <td><label for='bytes'>字节</label></td> </tr> <tr> <td style='width:20px'><input type='radio' name='what' value='lists' id='lists'></td> <td><label for='lists'>列表</label></td> </tr> </tbody> </table> </td> <td style='width:20px'><input type='checkbox' name='start' id='start' value='yes' checked='checked'> </td> <td style='text-align:left'><label for='start'>从“'Lorem ipsum dolor sit amet...”开始</label></td> </tr> <tr> <td></td> <td style='text-align:left'><input type='submit' name='generate' id='generate' value='生成Lorem Ipsum'></td> </tr> </tbody> </table> </form></div>",
 "<p>大分県では創業支援系のイベント開催や講師、IT業界の環境向上、DXやドローンの促進事業にも参加している。</p><p>ゲスト②：勝河 祥 さん／OITA CREATIVE ACADEMY 理事長</p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/10/ooita0911-14-1024x683-1024x683.jpg' style='height:683px; width:1024px' /></p><p>横浜生まれ、大分育ち。23歳のとき、専門学校でデザインを学びソフトウェアの会社に入社し、エンジニアとして働く。27歳で大分市に制作会社 LAUNCH CRAFTを創業。2017年にOITA CREATIVE ACADEMYの校長に就任、2019年にOITA CREATIVE ACADEMYの理事長に就任。</p><p>音楽・お酒・仏教・哲学に関心があり、人生のモットーは純粋。</p><p>♨IT編ゲストへの取材記事はこちら！</p><p><a href='https://turns.jp/40224' rel='noopener noreferrer' target='_blank'>https://turns.jp/40224</a></p><p><strong>＜古民家編＞</strong></p><p>テーマ：「大分の古民家 暮らす楽しみ、作る楽しみ！」</p><p>配信日：11月1日（日）15:00~<br /><a href='https://www.free-oita.com/'>FREE OITA特設サイト</a></p><p>ゲスト①：牧野 史和 さん、鯨井 結理 さん／山香文庫</p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/10/ooita0910-14-1024x683-1024x683.jpg' style='height:683px; width:1024px' /></p><p>牧野史和さん</p><p>山口県出身。大学で身体哲学、身体表現を修める。2015年、卒業と共に大分県杵築市へ農業振興担当の地域おこし協力隊として着任。任期満了後、杵築市の古民家に引っ越し、お茶の販売所、農泊施設、フリースペースとして山香文庫をオープン。</p><p>普段は師の元で有機栽培のお茶づくりに奮闘。また、ダンスインストラクターとしても活動中。</p><p>鯨井結理さん</p><p>埼玉県さいたま市出身。大学卒業後は関東</p>",
 "<div><h2>什么是Lorem Ipsum?</h2> <p>Lorem Ipsum，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，”Leatraset”公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件”Aldus PageMaker”也通过同样的方式使Lorem Ipsum落入大众的视野。</p></div><div class='mt-4 row'> <div class='col-md-6 mb-2'> <img class='col-md-12 m-0 p-0' src='/assets/image%202.png'><span class='project-sub-image-title'>「田舎暮らしモデルハウス」里山でいなか暮らし体験</span> </div> <div class='col-md-6 mb-2'> <img class='col-md-12 m-0 p-0' src='/assets/image%202.png'><span class='project-sub-image-title'>「田舎暮らしモデルハウス」里山でいなか暮らし体験</span> </div></div><div> <h2>我们为何用它？</h2> <p>无可否认，当读者在浏览一个页面的排版时，难免会被可阅读的内容所分散注意力。Lorem Ipsum的目的就是为了保持字母多多少少标准及平均的分配，而不是“此处有文本，此处有文本”，从而让内容更像可读的英语。如今，很多桌面排版软件以及网页编辑用Lorem Ipsum作为默认的示范文本，搜一搜“Lorem Ipsum”就能找到这些网站的雏形。这些年来Lorem Ipsum演变出了各式各样的版本，有些出于偶然，有些则是故意的（刻意的幽默之类的）。な活動や地方での生活ができるの</p></div>",
 "<div><h2>什么是Lorem Ipsum?</h2> <p>Lorem Ipsum，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，”Leatraset”公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件”Aldus PageMaker”也通过同样的方式使Lorem Ipsum落入大众的视野。</p></div><div class='mt-4 row'> <div class='col-md-6 mb-2'> <img class='col-md-12 m-0 p-0' src='/assets/image%202.png'><span class='project-sub-image-title'>「田舎暮らしモデルハウス」里山でいなか暮らし体験</span> </div> <div class='col-md-6 mb-2'> <img class='col-md-12 m-0 p-0' src='/assets/image%202.png'><span class='project-sub-image-title'>「田舎暮らしモデルハウス」里山でいなか暮らし体験</span> </div></div><div> <h2>我们为何用它？</h2> <p>无可否认，当读者在浏览一个页面的排版时，难免会被可阅读的内容所分散注意力。Lorem Ipsum的目的就是为了保持字母多多少少标准及平均的分配，而不是“此处有文本，此处有文本”，从而让内容更像可读的英语。如今，很多桌面排版软件以及网页编辑用Lorem Ipsum作为默认的示范文本，搜一搜“Lorem Ipsum”就能找到这些网站的雏形。这些年来Lorem Ipsum演变出了各式各样的版本，有些出于偶然，有些则是故意的（刻意的幽默之类的）。な活動や地方での生活ができるの</p></div>",
 "<p>全国漁業就業者確保育成センターでは「漁業就業支援フェア2020in大阪」を、11月3日（火・祝日）大阪市 OMMビルにて開催します。</p><p>漁師の仕事！まるごとイベントは、漁師になる準備ができている方はもちろん、仕事の選択肢のひとつとして漁業をお考えの方や将来を模索中の方も参加できるフェアです。就職氷河期世代の方も歓迎！</p><p>当日は、全国各地の漁業関係者が出展し、漁師の仕事のことや浜での暮らしのことなど、直接お話を聞くことができます。また会場内のパソコンと漁業者を結ぶオンライン面談も予定しています。お気軽にご参加ください。</p><p>出展団体情報ほか詳細は、全国漁業就業者確保育成センターHPを御覧ください。</p><p><a href='https://ryoushi.jp/' rel='noopener noreferrer' target='_blank'>https://ryoushi.jp/</a></p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/08/4b23b676987220eb2dc7ede0ca90525c-724x1024.jpg' style='height:1024px; width:724px' /></p><p>漁業就業支援フェア2020</p><table><tbody><tr><th>開催日</th><td>2020年11月3日（火）</td></tr><tr><th>時間</th><td>12:30～16:00</td></tr><tr><th>会場</th><td>OMMビル2階　A・Bホール</td></tr><tr><th>地図</th><td></td></tr><tr><th>住所</th><td>大阪府大阪市中央区大手前1-7-31</td></tr><tr><th>参加費</th><td>無料</td></tr><tr><th>主催</th><td>（一社）全国漁業就業者確保育成センター／後援：水産庁</td></tr><tr><th>参加方法</th><td>※ご来場前にHP、Twitter、Facebookで最新情報をご確認ください。</td></tr><tr><th>お問い合わせ先</th><td>（一社）全国漁業就業者確保育成センター<br />TEL：03-5545-1617<br />mail：info★ryoushi.jp（★&rarr;@に変えてください）</td></tr><tr><th>備考</th><td><p>※このほか、東京（11/28）で開催予定！</p></td></tr><tr><th>新型コロナウイ<br />ルス感染症対策<br />について</th><td><p>当フェアは密接を避ける取組やアルコール消毒等をはじめとする感染防止策を講じ、安全面を考慮しながら開催いたします。ご来場時はマスク着用等感染予防策にご協力をお願いします。発熱がある方、体調不良の方は来場をお断りする場合がございます。会場内の滞在人数を一定にするため、入場制限する場合がございます。なお今後の状況によっては、やむを得ず開催を延期・中止する可能性もございます。</p></td></tr></tbody></table>",
 "<p>日本一のおんせん県&rdquo;大分県最大のオンライン移住フェア<br />「FREE OITA」開催！</p><p><iframe frameborder='0' id='twitter-widget-0' scrolling='no' src='https://platform.twitter.com/widgets/tweet_button.96fd96193cc66c3e11d4c5e4c7c7ec97.ja.html#dnt=false&amp;id=twitter-widget-0&amp;lang=ja&amp;original_referer=https%3A%2F%2Fturns.jp%2F40960&amp;size=m&amp;text=%22%E6%97%A5%E6%9C%AC%E4%B8%80%E3%81%AE%E3%81%8A%E3%82%93%E3%81%9B%E3%82%93%E7%9C%8C%22%E5%A4%A7%E5%88%86%E7%9C%8C%E6%9C%80%E5%A4%A7%E3%81%AE%E3%82%AA%E3%83%B3%E3%83%A9%E3%82%A4%E3%83%B3%E7%A7%BB%E4%BD%8F%E3%83%95%E3%82%A7%E3%82%A2%20%E3%80%8CFREE%20OITA%E3%80%8D%E9%96%8B%E5%82%AC%EF%BC%81%20%7C%20TURNS%EF%BC%88%E3%82%BF%E3%83%BC%E3%83%B3%E3%82%BA%EF%BC%89%E3%81%93%E3%82%8C%E3%81%8B%E3%82%89%E3%81%AE%E5%9C%B0%E5%9F%9F%E3%81%A8%E3%81%AE%E3%81%A4%E3%81%AA%E3%81%8C%E3%82%8A%E3%81%8B%E3%81%9F&amp;time=1603365259376&amp;type=share&amp;url=https%3A%2F%2Fturns.jp%2F40960' title='Twitter Tweet Button'></iframe></p><p><iframe frameborder='0' height='1000px' name='f2ca6a6f178f50a' scrolling='no' src='https://www.facebook.com/v2.7/plugins/share_button.php?app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df1ec529f74540f2%26domain%3Dturns.jp%26origin%3Dhttps%253A%252F%252Fturns.jp%252Ff1184165836778e%26relation%3Dparent.parent&amp;container_width=0&amp;href=https%3A%2F%2Fturns.jp%2F40960&amp;locale=ja_JP&amp;sdk=joey&amp;type=button_count' title='fb:share_button Facebook Social Plugin' width='1000px'></iframe></p><p><a href='https://turns.jp/event' rel='category tag'>イベント</a> <a href='https://turns.jp/tag/it' rel='tag'>IT</a> <a href='https://turns.jp/tag/%e3%82%aa%e3%83%b3%e3%83%a9%e3%82%a4%e3%83%b3' rel='tag'>オンライン</a> <a href='https://turns.jp/tag/old-house' rel='tag'>古民家</a> <a href='https://turns.jp/tag/%e5%a4%a7%e5%88%86%e7%9c%8c' rel='tag'>大分県</a> <a href='https://turns.jp/tag/%e7%a7%bb%e4%bd%8f%e3%82%a4%e3%83%99%e3%83%b3%e3%83%88' rel='tag'>移住イベント</a></p><p>&ldquo;日本一のおんせん県&rdquo;として知られる大分県の移住フェアを、今年も開催します！！</p><p>初のオンライン開催となる今年は、移住者ゲストによるトークセッションのLIVE配信やWEBワークショップ、オンライン個別相談会など、内容盛りだくさん！</p><p>パソコンやスマートフォンなどからご参加いただける参加費無料のオンラインイベントなので、温暖で自然豊かな地域でストレスフリーな暮らしがしたい方、温泉がある街で古民家暮らしがしたい方、温泉だけでなくITも熱い大分で場所に縛られずに働きたい方などなど、皆さまお気軽にご参加ください♪</p><h1><strong>♨プログラム♨</strong></h1><h2><strong>1.LIVE配信トークセッション</strong></h2><p>先輩移住者が大分の仕事、暮らしのリアルを語るトークセッションを、大分から生配信！</p><p>IT編と古民家編の2部構成でお届けします！</p><p><strong>＜IT編＞</strong></p><p>テーマ：「おんせんだけじゃなくITも熱い！」</p><p>配信日：11月1日（日）11:00~<br /><a href='https://www.free-oita.com/'>FREE OITA特設サイト</a></p><p>ゲスト①：後藤 洋介 さん／株式会社コラボ Co-Founder</p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/10/ooita0911-34-1024x683-1024x683.jpg' style='height:683px; width:1024px' /></p><p>大分市出身。2017年から大分県初のWebディレクション専門会社として株式会社コラボを共同創業し、日本中のプロジェクトと大分県のIT企業のコラボレーションを推進するニアショア開発コーディネート事業を展開中。</p><p>大分県では創業支援系のイベント開催や講師、IT業界の環境向上、DXやドローンの促進事業にも参加している。</p><p>ゲスト②：勝河 祥 さん／OITA CREATIVE ACADEMY 理事長</p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/10/ooita0911-14-1024x683-1024x683.jpg' style='height:683px; width:1024px' /></p>",
 "<p>大分県では創業支援系のイベント開催や講師、IT業界の環境向上、DXやドローンの促進事業にも参加している。</p><p>ゲスト②：勝河 祥 さん／OITA CREATIVE ACADEMY 理事長</p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/10/ooita0911-14-1024x683-1024x683.jpg' style='height:683px; width:1024px' /></p><p>横浜生まれ、大分育ち。23歳のとき、専門学校でデザインを学びソフトウェアの会社に入社し、エンジニアとして働く。27歳で大分市に制作会社 LAUNCH CRAFTを創業。2017年にOITA CREATIVE ACADEMYの校長に就任、2019年にOITA CREATIVE ACADEMYの理事長に就任。</p><p>音楽・お酒・仏教・哲学に関心があり、人生のモットーは純粋。</p><p>♨IT編ゲストへの取材記事はこちら！</p><p><a href='https://turns.jp/40224' rel='noopener noreferrer' target='_blank'>https://turns.jp/40224</a></p><p><strong>＜古民家編＞</strong></p><p>テーマ：「大分の古民家 暮らす楽しみ、作る楽しみ！」</p><p>配信日：11月1日（日）15:00~<br /><a href='https://www.free-oita.com/'>FREE OITA特設サイト</a></p><p>ゲスト①：牧野 史和 さん、鯨井 結理 さん／山香文庫</p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/10/ooita0910-14-1024x683-1024x683.jpg' style='height:683px; width:1024px' /></p><p>牧野史和さん</p><p>山口県出身。大学で身体哲学、身体表現を修める。2015年、卒業と共に大分県杵築市へ農業振興担当の地域おこし協力隊として着任。任期満了後、杵築市の古民家に引っ越し、お茶の販売所、農泊施設、フリースペースとして山香文庫をオープン。</p><p>普段は師の元で有機栽培のお茶づくりに奮闘。また、ダンスインストラクターとしても活動中。</p><p>鯨井結理さん</p><p>埼玉県さいたま市出身。大学卒業後は関東</p>",
 "<p>鯨井結理さん</p><p>埼玉県さいたま市出身。大学卒業後は関東で働き、その後スタジオ専属のヨガインストラクターに転職。2年前に山香町に住まいを移す。現在はインストラクターに加えて東京の所属スタジオ運営を遠隔で行う手伝う傍ら、「山香文庫」を牧野と共に営む。</p><p>ゲスト②：青木 奈々絵 さん／杵築市地域おこし協力隊</p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/10/ooita0910-44-1024x683-1024x683.jpg' style='height:683px; width:1024px' /></p><p>栃木県出身。東京の国際協力団体で勤めたのち、旅行で杵築市山香町を訪れたことをきっかけに、2019年に杵築市地域おこし協力隊として移住。空き家バンクの運営や移住相談業務を行う一方、国東半島に伝わる伝統工芸・七島藺(しちとうい)の技法を習得。各地で展示やワークショップを実施。</p><p>現在は築150年の古民家をパートナーとセルフリノベーションし、農家民泊の開業を目指している。</p><p>♨古民家編ゲストへの取材記事はこちら！</p><p><a href='https://turns.jp/40222' rel='noopener noreferrer' target='_blank'>https://turns.jp/40222</a></p><hr /><h2><strong>2.WEBワークショップ</strong></h2><p><strong>＜臼杵煎餅作りワークショップ＞</strong></p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/10/workshop.jpg' style='height:279px; width:860px' /></p><p>大分の銘菓「後藤製菓 臼杵煎餅」を作るWEBワークショップを開催します！</p><p>※個別相談にお申し込みされた方の中から、抽選で10名様限定のスペシャルな体験です。な活動や地方での生活ができるの</p>",
 "<p>長野県<strong>＜占い＞</strong></p><p><img alt='' src='https://turns.jp/turns2018/wp-content/uploads/2020/10/program-img06.jpg' style='height:278px; width:860px' /></p><p>大分に移住した占い師「荒井ちひろ」さんが、オンラインであなたの未来を占います！</p><p>※個別相談にお申し込みされた方の中から、抽選で10名様限定のスペシャルな体験です。</p><hr /><h2><strong>3.個別相談</strong></h2><p>11月1日（日）～7日（土）の期間中、大分県内の16の市町村と5の移住サポート団体へのオンライン個別相談が可能です。</p><p>大分市、別府市、中津市、日田市、佐伯市、臼杵市、津久見市、竹田市、豊後高田市、杵築市、宇佐市、豊後大野市、由布市、国東市、日出町、九重町、玖珠町<br />大分県(移住総合、就農相談、就職相談、起業相談(おおいたスタートアップセンター)、事業承継(大分県事業引継ぎ支援センター)</p><p><a href='https://www.free-oita.com/'>FREE OITA特設サイト</a><br />または、下記からお申込みください。</p><p>※移住相談では、<a href='https://zoom.us/'>zoom</a>を使用します。事前にダウンロードをお願い致します。</p><p>FREE OITA</p><table><tbody><tr><th>開催日</th><td>2020年11月1日（日） 〜2020年11月7日（土）</td></tr><tr><th>時間</th><td>10:00～17:00</td></tr><tr><th>会場</th><td>オンライン開催</td></tr><tr><th>参加費</th><td>無料</td></tr><tr><th>主催</th><td>大分県</td></tr><tr><th>参加方法</th><td>●トークセッション<br />開催時間になりましたら、下記URL内の「大分の魅力を動画で公開中！」より配信いたします。<br />事前申し込みは不要です。<br />https://www.free-oita.com/<br /><br />●web移住相談・ワークショップ<br />下記からお申込みください。</td></tr><tr><th>お問い合わせ先</th><td>FREE OITA イベント事務局（TURNS）<br />TEL：03-6269-9732<br />MAIL：info★turns.jp<br />※★を＠に変えてご連絡ください。</td></tr></tbody></table><p><a href='https://www.free-oita.com/' target='_blank'>応募フォームはこちら</a></p>",
 "<p>長野県伊那市の地域おこし協力隊の澤です。横浜市から伊那市高遠町に２年前に移住し、地域の観光振興に携わっています。私が住む伊那市高遠町は、「日本で最も美しい村」連合に加盟しています。</p><p>美しい村とは、「失ったら二度と取り戻せない日本の農山漁村の景観・文化を守りつつ、最も美しい村としての自立を目指す運動」が連合の趣旨となり、全国63の市区町村が加盟しています。</p><p>高遠町で登録されている地域資源は、<br />・高遠城址公園と地域の人々が守り育てる「タカトオコヒガンザクラ」<br />・日本一の石工「高遠石工」の石造物です。</p><p>桜に関しては日本三大桜の名所として全国に知られ、毎年十数万人の人が訪れます。しかし、高遠石工の石造物を観光目的に訪れる人はごく僅かです。それどころか地域住民の関心も薄く、認知度が低いのが現状です。桜と違い、とても町民が総意で誇れる地域の財産とは言えません。</p><p>しかし歴史を振り返ると、高遠石工は江戸時代の高遠藩の財政を大きく支え、「江戸城の石垣」や「品川の砲台」の建設など全国で活躍しブランドを築き上げていました。今の高遠町内にもその痕跡が残り、農村の辻や村境、そして寺院には石仏をはじめとした石造物が多く祀られています。</p><p>人口5000人ほどの高遠町ですが、なんと存在する石仏・石造物は2229基もあります。１つ１つに歴史的な貴重な価値がありますが、その多くが野ざらしに安置され、管理も行き届いていないのが現状です。このまま何もしないと時間と共に風化は進み、多くの石仏は歴史の中に消えてしまいます。</p><p>まさに失ったら二度と取り戻せない地域の財産です。</p><p>そこで観光という名の光を当て、その価値を地域の人や、外の人向けて魅力を発信し、伊那市高遠町の観光の柱として確立させていきたいと考えています。そこで、石仏観光を確立する中で、観光の企画や商品づくりなどを一緒に考えて実践してくださる人を募集します。</p><p>・イベントの企画<br />・石仏グッズの製作・販売<br />・石仏のPR活動<br />・SNSを駆使した広報活動</p><p>上記の活動を中心として、実際にアイデアを実行していきます。ご興味がある方は、ぜひご参加お願いいたします。</p><p>石仏観光の可能性を探しませんか？</p><p>観桜期には人が溢れるほど訪れるけど、その時期以外の高遠町は静かで閑散としています。通年観光化を目指し、数年前からり高遠石工に力を注いでいますが大きな成果は得られていません。しかし根強いファンに支えられ、パンフレットや石仏マップの整備など少しずつ地盤が出来あがりつつあります。</p><p>そんな中、石仏を巡るキャンペーンを実施したところ、チラシデザインや記念品、SNSの配信などを工夫していく中で新たな発見がありました。それは参加者の半数を40代以下＆女性が占めていたことです。今までは60～70代以降のマニアな男性ばかりだった現状から、若い年代や女性にも関心が持ってもらえるという新しい兆しが見え始めました。アイデアや宣伝の仕方で大きく変わる可能性を知りました。</p><p>石仏観光を目的に高遠町を訪れる。地図やカメラを手に持ち石仏を探しながら町を散策している。</p><p>そんな光景が一年中で見れるようにしたいです。SNS等でも高遠石工巡りが頻繁に投稿されるような、今の時流に合った情報発信が出来ればと思います。そして観光客が増え注目を浴びることで、地域の方が石仏に対する価値を再認識し、周辺の草刈りや清掃活動など率先して実施し、美しい村の存続と共に石仏の大切さを後世に伝える心が育んでいければと願います。</p><p>【これまでの活動内容】<br />2019年３月　高遠町内の石仏・石造物の観光調査（現地の状況の確認）<br />2020年４月　高遠石仏観光マップを作製<br />2020年８月　伊那市高遠町で石仏を探そう！キャンペーンの実施<br />2020年10月　高遠石工関連グッズの製作（車に貼るマグネット、一筆箋など）</p><p><img alt='高遠に2229基もある石仏・石造物' src='https://smout-uploads.imgix.net/uploads/unit/image1/5404/image1_1602742673.jpeg?ixlib=rails-4.0.0&amp;w=450&amp;h=328.5&amp;fit=crop' /></p><p>高遠に2229基もある石仏・石造物</p><p><img alt='石仏をめぐるマップ' src='https://smout-uploads.imgix.net/uploads/unit/image2/5404/image2_1602742200.jpeg?ixlib=rails-4.0.0&amp;w=450&amp;h=328.5&amp;fit=crop' /></p><p>石仏をめぐるマップ</p>",
 "<p>日本一の石仏観光地づくりに参加してみませんか？</p><p>・石仏・石造物・神社仏閣などに興味がある人<br />・商品開発、観光の仕掛けなどに興味がある人<br />・伊那市高遠町に興味がある人<br />・自分の新しい一面や、可能性にチャレンジしたい人</p><p>観光や商品開発など関わったこと無い方も大歓迎です。自分のアイデアが具現化し、それが町の未来を大きく変えていくかも知れない・・・。そんなことを一緒に叶えていける方と出会いたいです。</p><p>【オンラインインターンシップ企画概要】</p><p>「一緒に地域をつくりましょう！」<br />伊那市地域おこし協力隊とともに地域課題を解決に向けて活動するオンラインインターンシップを開催します。各隊員が抱える課題や未来へつなげる活動にオンライン上で参加。隊員とともに企画を立案し、実践します。<br />終了後にはオンライン報告会を実施。活動内容を全国に配信します。<br />・活動時間　週5時間程度<br />・謝礼　なし<br />詳細については「興味ある」を押してください。</p><p><img alt='高遠には美しい里山風景が広がる' src='https://smout-uploads.imgix.net/uploads/unit/image1/5405/image1_1602742700.jpeg?ixlib=rails-4.0.0&amp;w=450&amp;h=328.5&amp;fit=crop' /></p><p>高遠には美しい里山風景が広がる</p><p><img alt='カメラマンもしています！' src='https://smout-uploads.imgix.net/uploads/unit/image2/5405/image2_1602742438.jpeg?ixlib=rails-4.0.0&amp;w=450&amp;h=328.5&amp;fit=crop' /></p><p>カメラマンもしています！</p><p><img alt='伊那市' src='https://smout-uploads.imgix.net/uploads/area_unit/image/1867/image_1575428239.jpeg?ixlib=rails-4.0.0&amp;w=280&amp;h=200&amp;fit=crop' /></p><p>伊那市移住・定住相談窓口が紹介する伊那市ってこんなところ！</p><p>長野県伊那市は、中央アルプスと南アルプスが東西に広がり、その間を天竜川と三峰川などが流れる、人口約68,000人の自然豊かなまちです。東京、名古屋、大阪などから、高速バスの直通便があります。<br />特色ある教育の保育園や小学校などが多く、また図書館をはじめとする文化環境も優れているということから、「子育てにぴったりな田舎」としても取り上げられています。<br />商店街にも元気なお店が多く、さらに夜になると多くの飲食店に人々が集い話をする、楽しいまちです。<br />伊那市への移住・定住を検討する方は、ぜひ一度伊那市役所の「伊那市移住・定住相談窓口」にご連絡ください。</p><p>■伊那市移住応援HP「伊那に住む」　<a href='http://www.inacity.jp/iju/' target='_blank'>http://www.inacity.jp/iju/</a></p>",
 "<p>令和2年度第1回地域おこし協力隊合同募集・マッチングセミナー【☆社会人歓迎☆】<br />★★地域おこし協力隊になりたい方必見★★</p> <p>11月4日(水)に令和２年度第１回地域おこし協力隊合同募集・マッチングセミナーを開催いたします！<br /> 地域おこし協力隊員や自治体職員からのリアルな声を聴いて、「地域おこし協力隊」への理解を深めてみませんか？</p> <p>隊員を募集する自治体が参加＆PRを行います！運命の地域が見つかるかも・・・？</p> <p>オンライン開催＆参加無料です！<br /> 興味がある方はぜひ「興味ある」を参加したい方は「応募する」を押してください。</p> <p>&darr;詳細はこちら&darr;<br /> <a href='https://www.iju-join.jp/chiikiokoshi/7785.html' target='_blank'>https://www.iju-join.jp/chiikiokoshi/7785.html</a></p> <p>&dArr;その他の回の情報等についてはコチラ&dArr;<br /> <a href='https://www.iju-join.jp/chiikiokoshi/7778.html' target='_blank'>https://www.iju-join.jp/chiikiokoshi/7778.html</a></p> <p>是非ご参加ください！</p> <p>+++++++++++++++++++++++++++++++++++++++++++++<br /> ・日　時：2020年11月4日(水)　18:00～21:00<br /> ・場　所：オンライン上で開催<br />   　（※zoomを使用いたします）<br /> ・定　員：なし（事前申込制となります）<br /> ・参加費：無料<br /> ・参加自治体：石川県穴水町<br />広島県三次市<br />高知県梼原町<br />福岡県みやま市<br /> +++++++++++++++++++++++++++++++++++++++++++++</p><p>地域おこし協力隊って？</p> <p>移住に関心が高まっている昨今&hellip;。<br /> 都心から地域に移住して地域のために活動する、地域おこし協力隊にも関心が高まっております。<br /> しかし！<br /> 「どうすれば隊員になれるの？」<br /> 　「どんな自治体が募集しているの？」<br />  「どんな活動や地方での生活ができるの？」<br />その後、隊員はどんな活動をしているの？」<br /> &hellip;&hellip;など、疑問はつきません&hellip;。</p> <p>そんな皆さんの疑問にお答えします！<br /> 今回は完全オンラインにて開催！ご自宅に居ながら、協力隊の活動や地方の魅力について知ることができます！！</p> <p>※地域おこし協力隊とは&hellip;「地域おこし協力隊」とは、人口減少や高齢化の進行が著しい地方において、地域外の人材を積極的に受け入れて地域協力活動を行ってもらい、定住・定着を図ることで、意欲ある都市住民のニーズに応えながら、地域力の維持・強化を図っていくことを目的とした制度です。</p> <p><img alt='高知県梼原町地域おこし協力隊' src='https://smout-uploads.imgix.net/uploads/unit/image1/5647/image1_1603255607.jpeg?ixlib=rails-4.0.0&amp;w=450&amp;h=328.5&amp;fit=crop' /></p> <p>高知県梼原町地域おこし協力隊</p>",
 "<p>和★地方・移住に興味のある方々必見！！</p><p>地域への貢献、また移住、地方暮らしに興味関心のある方は、そのビジョンがぐっと具体的になるチャンス。<br />当日は、協力隊員OGや自治体の担当者が地域おこし協力隊のリアルな活動や各地域の魅力などを紹介いたします！<br />参加費は無料となっておりますので、この機会にぜひ奮ってご参加ください！</p><p><img alt='現役の地域おこし協力隊の方' src='https://smout-uploads.imgix.net/uploads/unit/image1/5639/image1_1603256382.jpeg?ixlib=rails-4.0.0&amp;w=450&amp;h=328.5&amp;fit=crop' /></p><p>現役の地域おこし協力隊の方</p><p><img alt='地域おこし協力隊及び担当者の方々' src='https://smout-uploads.imgix.net/uploads/unit/image2/5639/image2_1603256383.jpeg?ixlib=rails-4.0.0&amp;w=450&amp;h=328.5&amp;fit=crop' /></p><p>地域おこし協力隊及び担当者の方々</p><p>イベント・ツアー内容</p><p>開催日程:2020年11月04日</p><p>所要時間:18時～21時</p><p>費用:無料</p><p>集合場所:</p><p>解散場所:</p><p>スケジュール</p><p>開　催　日：2020年11月4日（水）<br />プログラム：18：00～ 受付（入室確認）<br />   18：30～18：40 協力隊制度説明（地域おこし協力隊サポートデスク）<br />   18：40～19：20 ゲストスピーカー・協力隊OG講演<br />   19：20～20：00 自治体PR（動画等含める）各８分４団体<br />   20：00～21：00 質疑応答・自治体名刺提示（１０分&times;５な活動や地方での生活ができるの</p>",
 "<p>今までのカタチにとらわれない古民家ビジネスに新価値を＞<br /> 大阪から約1時間半、関西国際空港から1時間、都会から少し足を伸ばし、日々の喧騒を忘れて豊かな自然と時間に癒やされたい。そんな人々が多く訪れるのが「うえみなみ」。</p> <p>「うえみなみ」は山と川に囲まれた紀美野町の山腹に佇む、築300年の歴史ある古民家。<br /> 長い時を大切に住み継がれ、暮らしの記憶が染み込む空間はどこか懐かしく愛おしい場所です。</p> <p>そんな「うえみなみ」の未来をつくるのがあなたの仕事です。現在は１日１組限定の体験型古民家宿スタイル。<br /> これからの「うえみなみ」をどうするか？</p> <p>経営者という目線で、今までのカタチにとらわれない、自由でアイデアフル、ワクワクするような進化を期待しています。</p><p><img alt='' src='https://smout-uploads.imgix.net/uploads/unit/image1/5463/image1_1602230272.jpeg?ixlib=rails-4.0.0&amp;w=450&amp;h=328.5&amp;fit=crop' /></p> <p><img alt='' src='https://smout-uploads.imgix.net/uploads/unit/image2/5463/image2_1602230272.jpeg?ixlib=rails-4.0.0&amp;w=450&amp;h=328.5&amp;fit=crop' /></p><p>案件名：風の古民家「うえみなみ」の後継者または仲間</p>",
 "<p>勤務地：和歌山県海草郡紀美野町谷667&lt;/p&gt;</p><p>&lt;p&gt;募集職種：宿泊施設の運営（後継者や仲間）&lt;/p&gt;</p><p>&lt;p&gt;業務内容：現在の宿泊業の運営や、料理、今までの形にこだわらない古民家や自然を活かした企画や展開&lt;/p&gt;</p><p>&lt;p&gt;求める能力：必要な経験は特になし。&lt;br /&gt;<br />現在は一組限定の宿泊施設として運営しているが、宿泊にこだわらずこの古民家と自然を使って展開しビジネスにつなげてほしい。&lt;br /&gt;<br />自身が田舎暮らしを楽しみながら、自由かつ新しい考えで取り組んでくれる方を望みます。&lt;/p&gt;</p><p>&lt;p&gt;条件：特になし&lt;/p&gt;</p><p>&lt;p&gt;その他：「うえみなみ」の女性オーナーは、紀美野町まちづくり協議会の副会長であり、紀美野町のみなさんと繋がることができます。またInstagramでは♯紀美野町が人気であり、新たな紀美野町の魅力を発見いただけます。&lt;/p&gt;</p><p>&lt;p&gt;&lt;img alt=&quot;紀美野町&quot; src=&quot;https://smout-uploads.imgix.net/uploads/area_unit/image/1975/image_1602230991.jpeg?ixlib=rails-4.0.0&amp;amp;w=280&amp;amp;h=200&amp;amp;fit=crop&quot; /&gt;&lt;/p&gt;</p><p>&lt;p&gt;シビレ株式会社が紹介する紀美野町ってこんなところ！&lt;/p&gt;</p><p>&lt;p&gt;＜IターンやUターンの定住者多数。自然と寄り添う風情ある暮らし＞&lt;br /&gt;<br />四季折々の移ろいを、暮らしの中でごく自然に感じられる紀美野町では、近年IターンやUターンの定住者が増えています。&lt;br /&gt;<br />定住者の中には、起業されている方や、観光に力を入れている方なども多いため、仲間づくりも活発です。&lt;br /&gt;<br />また、あなたの住まいについても町の住居制度を利用すれば、古民家を改修して住むなど、風情のある住まいや心豊かな暮らしが実現できるはず。&lt;/p&gt;</p><p>&lt;p&gt;◆市町村等から受けられる支援&lt;br /&gt;<br />移住を成功に導くための&lt;/p&gt;</p><p>&lt;p&gt;・空き家情報の提供&lt;br /&gt;<br />・各種支援金情報の提供&lt;/p&gt;</p><p>&lt;p&gt;などを支援&lt;/p&gt;<br />な活動や地方での生活ができるの</p>",
]

def generate_random_number(total)
  rand(0..total)
end

def time_rand from = Time.now, to = Time.now + 12.months
  Time.at(from + rand * (to.to_f - from.to_f))
end

(1..500).each do |i|
  time = time_rand
  project = Project.create!(title: titles[generate_random_number(titles.count - 1)],
                            description: descriptions[generate_random_number(descriptions.count - 1)],
                            start_date: time, end_date: time + 45.days)
  project.tag_list.add(tags[generate_random_number(tags.count - 1)])
  project.prefecture_list.add(prefectures[generate_random_number(prefectures.count - 1)])
  project.save
  puts "Generating and Storing project id:- #{project.id}"
end
