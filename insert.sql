USE liondb;

INSERT INTO mst_category(category_name, category_description) VALUES
('和菓子', '高級和菓子'),
('洋菓子', '定番洋菓子'),
('スナック', '有名メーカ－スナック'),
('駄菓子', '昔ながらの駄菓子');

INSERT INTO mst_product(product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company) VALUES
('羊羹　10本', 'ようかん', '商品サイズは17.4×16.41×3cmです。賞味期限は製造から1年以内、保存方法は高温多湿を避け涼しいところに保存してください。', 1, 3240, '/img/wagasi/youkan.jpg', '2020/01/15', 'とらや'),
('饅頭　16個', 'まんじゅう', '小倉あんがぎっしりと詰まった、ボリューム満点の定番和菓子です。8個入りの大袋が2袋で包装しております。', 1, 1180, '/img/wagasi/manjuu.jpg', '2020/01/15', '天然生活'),
('いちご大福　9個', 'いちごだいふく', 'いちごの王様「博多あまおう」がまるごと1つ入った大福です。半解凍でお召し上がりください。', 1, 4104, '/img/wagasi/ichigodaihuku.jpg', '2020/01/15', '養老軒'),
('どら焼き　8個', 'どらやき', '厳選された素材を使い、全て国産品使用ですので安心してお召し上がりください。', 1, 2160, '/img/wagasi/dorayaki.jpg', '2020/01/15', '和菓子むら山'),
('カステラ　250g×4本', 'かすてら', 'プレーン250g×2本、抹茶250g×1本、チョコレート250g×1本の3種4本セットをお届け。', 1, 1780, '/img/wagasi/kasutera.jpg', '2020/01/15', '天然生活'),
('フィナンシェ　16個', 'ふぃなんしぇ', '商品サイズは29.9×20.4×4.4cmです。賞味期限は発送日から21日間です。', 2, 2160, '/img/yougasi/finanshe.jpg', '2020/05/30', '株式会社シュゼット'),
('マカロン　12個', 'まかろん', '手提げ紙袋付き。賞味期限はお届け日より2週間、高温多湿を避けて、冷暗所で保管してください。', 2, 3000, '/img/yougasi/makaron.jpg', '2020/05/30', '曽呂利'),
('スコーン　5個', 'すこーん', '甘み成分に北海道産の素材を使用したしっとりやさしい甘みのスコーンです。', 2, 2700, '/img/yougasi/scone.jpg', '2020/05/30', 'famfam'),
('マシュマロ　3袋', 'ましゅまろ', '85g×3袋。バニラ風味でふんわり柔らかな食感のプレーンマシュマロです。', 2, 588, '/img/yougasi/mashumaro.jpg', '2020/05/30', 'エイワ'),
('プリン　6個', 'ぷりん', 'こだわりの原材料と製法により、なめらかでクリーミーなとろふわ食感となり、プレミアムな贅沢プリンが誕生しました。', 2, 1780, '/img/yougasi/purin.jpg', '2020/05/30', '財宝'),
('ポテトチップス　コンソメパンチ　60g×12個', 'ぽてとちっぷす', 'うまさが効いてる、あきないおいしさ「ポテトチップス コンソメパンチ」', 3, 1273, '/img/snack/konsomepanti.jpg', '2020/09/05', 'カルビー'),
('じゃがりこ サラダ　60g×12個', 'じゃがりこ', '独自の製法で"はじめカリッとあとからサクサク"の心地よい食感が楽しるスティックタイプのスナック。', 3, 1750, '/img/snack/jagariko.jpg', '2020/09/05', 'カルビー'),
('プリッツ　旨サラダ　69g×10個', 'ぷりっつ', '小麦由来の食物繊維が約2.2g入っているので、日々のひとり時間においしく食べて1日の不足分の約40%が捕らえます。', 3, 1051, '/img/snack/pretz.jpg', '2020/09/05', '江崎グリコ'),
('柿の種　1500g(75g×20袋)', 'かきのたね', '伝統の味。', 3, 1890, '/img/snack/kakinotane.jpg', '2020/09/05', '亀田製菓'),
('チュッパチャプス　45本', 'ちゅっぱちゃぷす', '世界で一番売れているロリポップキャンディです。', 3, 1840, '/img/snack/chupachaps.jpg', '2020/09/05', 'クラシエフーズ'),
('うまい棒　10種類×30本(300本)', 'うまいぼう', 'たこ焼き味、チーズ味、コーンポタージュ味、やきとり味、メンタイ味、のり塩味、牛たん塩味、なっとう味、シュガーラスク味、とんかつソース味。', 4, 3850, '/img/dagasi/umaibou.jpg', '2020/11/22', 'やおきん'),
('蒲焼きさん太郎　1枚×60袋', 'かばやきさんたろう', 'みりん、醤油、七味等で味付けし蒲焼風に仕上げました。絶妙なパリパリ感です。', 4, 840, '/img/dagasi/kabayakisantaro.jpg', '2020/11/22', '菓道'),
('よっちゃん 15g×20袋', 'よっちゃん', '昔ながらの味。', 4, 1230, '/img/dagasi/yochan.jpg', '2020/11/22', 'よっちゃん食品工業'),
('ポテトフライ　フライドチキン味 4枚×20袋', 'ぽてとふらい', 'ポテトの香ばしさにチキンの味が引き立つ、サクッとした歯ごたえのスナック菓子です。', 4, 604, '/img/dagasi/potatofry.jpg', '2020/11/22', '東豊製菓'),
('フエラムネ　ぶどう味　8個×20袋', 'ふえらむね', '昔懐かしい笛がなるラムネ菓子です。', 4, 1296, '/img/dagasi/fueramune.jpg', '2020/11/22', 'コリス');