# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(
   email: 'admin@example.com',
)

Castle.create([
    { name: "姫路城", latitude: 34.8397249574366, longitude: 134.693807797632, url: "/searches?keyword=%23姫路城" },
    { name: "松本城", latitude: 36.2386936010231, longitude: 137.96886118346, url: "/searches?keyword=%23松本城" },
    { name: "弘前城", latitude: 40.6079940607325, longitude: 140.463667629763, url: "/searches?keyword=%23弘前城" },
    { name: "大阪城", latitude: 34.6874979620838, longitude: 135.52584791928, url: "/searches?keyword=%23大阪城" },
    { name: "名古屋城", latitude: 35.1849166771114, longitude: 136.89967756775, url: "/searches?keyword=%23名古屋城" },
    { name: "二条城", latitude: 35.0144012043318, longitude: 135.748493774771, url: "/searches?keyword=%23二条城" },
    { name: "熊本城", latitude: 32.8063018659561, longitude: 130.705798020164, url: "/searches?keyword=%23熊本城" },
    { name: "首里城", latitude: 26.2171010483164, longitude: 127.719461914269, url: "/searches?keyword=%23首里城" },
    { name: "江戸城", latitude: 35.6885363476853, longitude: 139.755512448561, url: "/searches?keyword=%23江戸城" },
    { name: "高松城", latitude: 34.3503521925785, longitude: 134.051604039801, url: "/searches?keyword=%23高松城" },
    { name: "丸亀城", latitude: 34.286183692976, longitude: 133.8004500984, url: "/searches?keyword=%23丸亀城" },
    { name: "和歌山城", latitude: 34.2277079351791, longitude: 135.171487687087, url: "/searches?keyword=%23和歌山城" },
    { name: "宇和島城", latitude: 33.2196286835486, longitude: 132.565262538852, url: "/searches?keyword=%23宇和島城" },
    { name: "高知城", latitude: 33.560979408869, longitude: 133.531456631192, url: "/searches?keyword=%23高知城" },
    { name: "岡山城", latitude: 34.665308764743, longitude: 133.936067985926, url: "/searches?keyword=%23岡山城" },
    { name: "彦根城", latitude: 35.2777302254131, longitude: 136.251497151181, url: "/searches?keyword=%23彦根城" },
    { name: "金沢城", latitude: 36.5659980019372, longitude: 136.659614163718, url: "/searches?keyword=%23金沢城" },
    { name: "福井城", latitude: 36.0657902594481, longitude: 136.220953898459, url: "/searches?keyword=%23福井城" },
    { name: "会津若松城(鶴ヶ城)", latitude: 37.4880496266531, longitude: 139.929644238995, url: "/searches?keyword=%23会津若松城(鶴ヶ城)" },
    { name: "米沢城", latitude: 37.9094595822564, longitude: 140.105046559882, url: "/searches?keyword=%23米沢城" },
    { name: "小田原城", latitude: 35.2511595487163, longitude: 139.153545783092, url: "/searches?keyword=%23小田原城" },
    { name: "駿府城", latitude: 34.979195911555, longitude: 138.383163876292, url: "/searches?keyword=%23駿府城" },
    { name: "犬山城", latitude: 35.3886104125239, longitude: 136.939230240561, url: "/searches?keyword=%23犬山城" },
    { name: "岩村城", latitude: 35.3599714211636, longitude: 137.451316738459, url: "/searches?keyword=%23岩村城" },
    { name: "鳥取城", latitude: 35.5104326007516, longitude: 134.240956893814, url: "/searches?keyword=%23鳥取城" },
    { name: "松江城", latitude: 35.4752820051758, longitude: 133.05066756776, url: "/searches?keyword=%23松江城" },
    { name: "岡崎城", latitude: 34.9563998425919, longitude: 137.158772278725, url: "/searches?keyword=%23岡崎城" },
    { name: "伊賀上野城", latitude: 34.7703345896485, longitude: 136.127048282783, url: "/searches?keyword=%23伊賀上野城" },
    { name: "津山城", latitude: 35.0626753183681, longitude: 134.004940023572, url: "/searches?keyword=%23津山城" },
    { name: "備中松山城", latitude: 34.8090143974643, longitude: 133.621979642983, url: "/searches?keyword=%23備中松山城" },
    { name: "篠山城", latitude: 35.0733996691434, longitude: 135.2176024027, url: "/searches?keyword=%23篠山城" },
    { name: "伊予松山城", latitude: 33.8458173630304, longitude: 132.765545325376, url: "/searches?keyword=%23伊予松山城" },
    { name: "平戸城", latitude: 33.3693123285925, longitude: 129.557593051241, url: "/searches?keyword=%23平戸城" },
    { name: "島原城", latitude: 32.7895259131549, longitude: 130.367268194664, url: "/searches?keyword=%23島原城" },
    { name: "府内城", latitude: 33.2405415161859, longitude: 131.611618070861, url: "/searches?keyword=%23府内城" },
    { name: "杵築城", latitude: 33.4148057992115, longitude: 131.627720957304, url: "/searches?keyword=%23杵築城" },
    { name: "佐賀城", latitude: 33.2455756673971, longitude: 130.302698513706, url: "/searches?keyword=%23佐賀城" },
    { name: "福岡城", latitude: 33.5854558461539, longitude: 130.383183991501, url: "/searches?keyword=%23福岡城" },
    { name: "小倉城", latitude: 33.8846138068553, longitude: 130.874200452368, url: "/searches?keyword=%23小倉城" },
    { name: "鹿児島城", latitude: 31.59859316253, longitude: 130.555156892351, url: "/searches?keyword=%23鹿児島城" },
    { name: "今治城", latitude: 34.0634506888912, longitude: 133.006668965869, url: "/searches?keyword=%23今治城" },
    { name: "岡城", latitude: 32.9684306495517, longitude: 131.406334116491, url: "/searches?keyword=%23岡城" },
    { name: "中津城", latitude: 33.6068665203746, longitude: 131.186405238864, url: "/searches?keyword=%23中津城" },
    { name: "八代城", latitude: 32.5087181292734, longitude: 130.599315860524, url: "/searches?keyword=%23八代城" },
    { name: "唐津城", latitude: 33.4536545618296, longitude: 129.978208038859, url: "/searches?keyword=%23唐津城" },
    { name: "佐倉城", latitude: 35.722563392131, longitude: 140.216087587969, url: "/searches?keyword=%23佐倉城" },
    { name: "白石城", latitude: 38.0075217496505, longitude: 140.618878704622, url: "/searches?keyword=%23白石城" },
    { name: "米子城", latitude: 35.4252835093135, longitude: 133.324289608244, url: "/searches?keyword=%23米子城" },
    { name: "出石城", latitude: 35.4606380546193, longitude: 134.874722584943, url: "/searches?keyword=%23出石城" },
    { name: "福知山城", latitude: 35.297088786046, longitude: 135.129719425424, url: "/searches?keyword=%23福知山城" },
    { name: "八王子城", latitude: 35.6528262015779, longitude: 139.256439394757, url: "/searches?keyword=%23八王子城" },
    { name: "広島城", latitude: 34.4028163907369, longitude: 132.459051852385, url: "/searches?keyword=%23広島城" },
    { name: "安土城", latitude: 35.155889605101, longitude: 136.139576449538, url: "/searches?keyword=%23安土城" },
    { name: "飯田城", latitude: 35.5119109263266, longitude: 137.832478090451, url: "/searches?keyword=%23飯田城" },
    { name: "竹田城", latitude: 35.3006601466328, longitude: 134.829144861904, url: "/searches?keyword=%23竹田城" },
    { name: "高山城", latitude: 36.1382575994128, longitude: 137.263264083122, url: "/searches?keyword=%23高山城" },
    { name: "松阪城", latitude: 34.5761254305675, longitude: 136.525870446858, url: "/searches?keyword=%23松阪城" },
    { name: "新発田城", latitude: 37.954941305091, longitude: 139.326014896681, url: "/searches?keyword=%23新発田城" },
    { name: "三春城", latitude: 37.4425024423594, longitude: 140.49661231171, url: "/searches?keyword=%23三春城" },
    { name: "秋田城", latitude: 39.740587869146, longitude: 140.079158894903, url: "/searches?keyword=%23秋田城" },
    { name: "大和郡山城", latitude: 34.651730105191, longitude: 135.779164926307, url: "/searches?keyword=%23大和郡山城" },
    { name: "五稜郭", latitude: 41.7970860655959, longitude: 140.756803485513, url: "/searches?keyword=%23五稜郭" },
    { name: "苗木城", latitude: 35.5131097338098, longitude: 137.485079647803, url: "/searches?keyword=%23苗木城" },
    { name: "多賀城", latitude: 38.2995416641865, longitude: 140.998122183468, url: "/searches?keyword=%23多賀城" },
    { name: "小峰城", latitude: 37.1325322498207, longitude: 140.213602105873, url: "/searches?keyword=%23小峰城" },
    { name: "三木城", latitude: 34.7999865026643, longitude: 134.987842538903, url: "/searches?keyword=%23三木城" },
    { name: "唐櫃城", latitude: 35.2394218200449, longitude: 134.226736838035, url: "/searches?keyword=%23唐櫃城" },
    { name: "八幡山城", latitude: 35.1444496365377, longitude: 136.082291173127, url: "/searches?keyword=%23八幡山城" },
    { name: "五城目城", latitude: 39.9583813449959, longitude: 140.125696009404, url: "/searches?keyword=%23五城目城" },
    { name: "栃木城", latitude: 36.3757206528532, longitude: 139.743247694781, url: "/searches?keyword=%23栃木城" },
    { name: "国府尾城", latitude: 36.2066294269123, longitude: 133.319882369629, url: "/searches?keyword=%23国府尾城" },
    { name: "小浜城", latitude: 35.5043732832998, longitude: 135.746429257954, url: "/searches?keyword=%23小浜城" },
    { name: "館山城", latitude: 34.9815980150831, longitude: 139.855321445934, url: "/searches?keyword=%23館山城" },
    { name: "延岡城", latitude: 32.5807361000228, longitude: 131.662967254171, url: "/searches?keyword=%23延岡城" },
    { name: "馬谷城", latitude: 33.6383389692302, longitude: 135.408825802452, url: "/searches?keyword=%23馬谷城" },
    { name: "岐阜城", latitude: 35.4365058945892, longitude: 136.782217939556, url: "/searches?keyword=%23岐阜城" },
    { name: "徳島城", latitude: 34.0767915595554, longitude: 134.554344062021, url: "/searches?keyword=%23徳島城" },
    { name: "本庄城", latitude: 36.2433875726007, longitude: 139.191950054291, url: "/searches?keyword=%23本庄城" },
    { name: "忍城", latitude: 36.1381205205273, longitude: 139.453170058855, url: "/searches?keyword=%23忍城" },
    { name: "吉田城", latitude: 34.7704843751083, longitude: 137.393199434758, url: "/searches?keyword=%23吉田城" },
    { name: "二条城", latitude: 35.0144012043318, longitude: 135.749094589524, url: "/searches?keyword=%23二条城" },
    { name: "伏見城", latitude: 34.9396047008155, longitude: 135.776924712788, url: "/searches?keyword=%23伏見城" },
    { name: "岸和田城", latitude: 34.4591627084798, longitude: 135.370764121101, url: "/searches?keyword=%23岸和田城" },
    { name: "福山城", latitude: 34.4907545367993, longitude: 133.361248463746, url: "/searches?keyword=%23福山城" },
    { name: "萩城", latitude: 34.4190160034245, longitude: 131.38342380553, url: "/searches?keyword=%23萩城" },
    { name: "佐土原城", latitude: 32.0469422431021, longitude: 131.421828521345, url: "/searches?keyword=%23佐土原城" },
    { name: "高天神城", latitude: 34.698446710228, longitude: 138.035528381229, url: "/searches?keyword=%23高天神城" },
    { name: "宇都宮城", latitude: 36.5544841188143, longitude: 139.885817081292, url: "/searches?keyword=%23宇都宮城" },
    { name: "祇園城", latitude: 36.3186899047907, longitude: 139.800031687643, url: "/searches?keyword=%23祇園城" },
    { name: "館林城", latitude: 36.2462353198854, longitude: 139.540529096621, url: "/searches?keyword=%23館林城" },
    { name: "古河城", latitude: 36.1868459272381, longitude: 139.69475025066, url: "/searches?keyword=%23古河城" },
    { name: "川越城", latitude: 35.9244200564045, longitude: 139.491717915802, url: "/searches?keyword=%23川越城" },
    { name: "甲府城", latitude: 35.6654005464906, longitude: 138.571374610996, url: "/searches?keyword=%23甲府城" },
    { name: "沼田城", latitude: 36.6487009768918, longitude: 139.039960365956, url: "/searches?keyword=%23沼田城" },
    { name: "上田城", latitude: 36.4037155361294, longitude: 138.244543822044, url: "/searches?keyword=%23上田城" },
    { name: "二本松城", latitude: 37.6000727855503, longitude: 140.428268690843, url: "/searches?keyword=%23二本松城" },
    { name: "大垣城", latitude: 35.3620001787031, longitude: 136.616061243113, url: "/searches?keyword=%23大垣城" },
    { name: "長岡城", latitude: 37.4474797140345, longitude: 138.853125610159, url: "/searches?keyword=%23長岡城" },
    { name: "盛岡城", latitude: 39.7007297159643, longitude: 141.151326109948, url: "/searches?keyword=%23盛岡城" },
    { name: "春日山城", latitude: 37.1468306857685, longitude: 138.205482837139, url: "/searches?keyword=%23春日山城" },
    { name: "櫛崎城", latitude: 33.9903736883943, longitude: 130.994264248421, url: "/searches?keyword=%23櫛崎城" },
    { name: "富山城", latitude: 36.6929040757934, longitude: 137.211712948481, url: "/searches?keyword=%23富山城" },
    { name: "大津城", latitude: 35.0096863200321, longitude: 135.865020718419, url: "/searches?keyword=%23大津城" },
    { name: "岡豊城", latitude: 33.5951700826283, longitude: 133.622605940707, url: "/searches?keyword=%23岡豊城" },
    { name: "白地城", latitude: 34.0158967829802, longitude: 133.781037054216, url: "/searches?keyword=%23白地城" },
    { name: "勝瑞城", latitude: 34.1308976803777, longitude: 134.52211836432, url: "/searches?keyword=%23勝瑞城" },
    { name: "洲本城", latitude: 34.3392817283241, longitude: 134.902006894044, url: "/searches?keyword=%23洲本城" },
    { name: "坂本城", latitude: 35.0587590063739, longitude: 135.87871430987, url: "/searches?keyword=%23坂本城" },
    { name: "清水山城", latitude: 35.3622868100381, longitude: 136.018655595714, url: "/searches?keyword=%23清水山城" },
    { name: "高槻城", latitude: 34.8437448162527, longitude: 135.621971767739, url: "/searches?keyword=%23高槻城" },
    { name: "有岡城", latitude: 34.7811451737413, longitude: 135.420992780912, url: "/searches?keyword=%23有岡城" },
    { name: "竹鼻城", latitude: 35.3242172765916, longitude: 136.701929240764, url: "/searches?keyword=%23竹鼻城" },
    { name: "佐和山城", latitude: 35.2805118059011, longitude: 136.269261631249, url: "/searches?keyword=%23佐和山城" },
    { name: "長浜城", latitude: 35.3780617518726, longitude: 136.261746933786, url: "/searches?keyword=%23長浜城" },
    { name: "浜松城", latitude: 34.711922175945, longitude: 137.724934210065, url: "/searches?keyword=%23浜松城" },
    { name: "小谷城", latitude: 35.4595617397215, longitude: 136.276759415591, url: "/searches?keyword=%23小谷城" },
    { name: "七尾城", latitude: 37.009149802931, longitude: 136.985203159557, url: "/searches?keyword=%23七尾城" },
    { name: "小松城", latitude: 36.4127543265642, longitude: 136.443569294783, url: "/searches?keyword=%23小松城" },
    { name: "魚津城", latitude: 36.8134611971113, longitude: 137.397692971494, url: "/searches?keyword=%23魚津城" },
    { name: "一乗谷城", latitude: 35.9973261005559, longitude: 136.306976149214, url: "/searches?keyword=%23一乗谷城" },
    { name: "杣山城", latitude: 35.8025247041383, longitude: 136.21951514078, url: "/searches?keyword=%23杣山城" },
    { name: "金ヶ崎城", latitude: 35.6664110823854, longitude: 136.074165713785, url: "/searches?keyword=%23金ヶ崎城" },
    { name: "国吉城", latitude: 35.6134736495017, longitude: 135.966248230136, url: "/searches?keyword=%23国吉城" },
    { name: "松倉城", latitude: 36.1269542564315, longitude: 137.234591778467, url: "/searches?keyword=%23松倉城" },
    { name: "郡上八幡城", latitude: 35.7532230036781, longitude: 136.961345108255, url: "/searches?keyword=%23郡上八幡城" },
    { name: "松代城", latitude: 36.5656269758688, longitude: 138.195955817797, url: "/searches?keyword=%23松代城" },
    { name: "栃尾城", latitude: 37.4725380998219, longitude: 138.987777338994, url: "/searches?keyword=%23栃尾城" },
    { name: "西尾城", latitude: 34.8665044647932, longitude: 137.04779500483, url: "/searches?keyword=%23西尾城" },
    { name: "東条城", latitude: 34.8356421644251, longitude: 137.090471798418, url: "/searches?keyword=%23東条城" },
    { name: "刈谷城", latitude: 34.9891299467855, longitude: 136.984559711918, url: "/searches?keyword=%23刈谷城" },
    { name: "鳴海城", latitude: 35.0817649620176, longitude: 136.950115448634, url: "/searches?keyword=%23鳴海城" },
    { name: "末森城", latitude: 35.1670533254935, longitude: 136.960053427263, url: "/searches?keyword=%23末森城" },
    { name: "守山城", latitude: 35.19788481423, longitude: 136.949771167751, url: "/searches?keyword=%23守山城" },
    { name: "足助城", latitude: 35.1354687811107, longitude: 137.324860904546, url: "/searches?keyword=%23足助城" },
    { name: "二俣城", latitude: 34.8622102394885, longitude: 137.808994254244, url: "/searches?keyword=%23二俣城" },
    { name: "田中城", latitude: 34.8724239888969, longitude: 138.274277744377, url: "/searches?keyword=%23田中城" },
    { name: "掛川城", latitude: 34.7754081630016, longitude: 138.013860381232, url: "/searches?keyword=%23掛川城" },
    { name: "久能山城", latitude: 34.9642996212587, longitude: 138.467429081238, url: "/searches?keyword=%23久能山城" },
    { name: "小机城", latitude: 35.5124731037459, longitude: 139.59419909844, url: "/searches?keyword=%23小机城" },
    { name: "大河内城", latitude: 34.5273888324202, longitude: 136.472889607175, url: "/searches?keyword=%23大河内城" },
    { name: "八上城", latitude: 35.062085156161, longitude: 135.256072367746, url: "/searches?keyword=%23八上城" },
    { name: "吉田郡山城", latitude: 34.673983134613, longitude: 132.709570520164, url: "/searches?keyword=%23吉田郡山城" },
    { name: "神辺城", latitude: 34.5383265922578, longitude: 133.385026067729, url: "/searches?keyword=%23神辺城" },
    { name: "佐東銀山城", latitude: 34.4564495434756, longitude: 132.448688896561, url: "/searches?keyword=%23佐東銀山城" },
    { name: "鏡山城", latitude: 34.4038991193435, longitude: 132.72724168122, url: "/searches?keyword=%23鏡山城" },
    { name: "月山富田城", latitude: 35.3608689331959, longitude: 133.185282744216, url: "/searches?keyword=%23月山富田城" },
    { name: "桜尾城", latitude: 34.3577880395862, longitude: 132.342238338888, url: "/searches?keyword=%23桜尾城" },
    { name: "赤穴城(瀬戸山城)", latitude: 34.9944141127461, longitude: 132.721582084377, url: "/searches?keyword=%23赤穴城(瀬戸山城)" },
    { name: "羽衣石城", latitude: 35.4374389483214, longitude: 133.898558089217, url: "/searches?keyword=%23羽衣石城" },
    { name: "備中高松城", latitude: 34.692813815679, longitude: 133.822262996569, url: "/searches?keyword=%23備中高松城" },
    { name: "高城", latitude: 32.1678560363639, longitude: 131.474810999428, url: "/searches?keyword=%23高城" },
    { name: "大聖寺城", latitude: 36.3090188803319, longitude: 136.305285065065, url: "/searches?keyword=%23大聖寺城" },
    { name: "高水寺城", latitude: 39.5657486427014, longitude: 141.173163178812, url: "/searches?keyword=%23高水寺城" },
    { name: "鶴ヶ岡城", latitude: 38.7284089206891, longitude: 139.824739261188, url: "/searches?keyword=%23鶴ヶ岡城" },
    { name: "芥川城", latitude: 34.8808615968603, longitude: 135.588308138905, url: "/searches?keyword=%23芥川城" },
    { name: "飯盛山城", latitude: 34.726804227274, longitude: 135.653605282731, url: "/searches?keyword=%23飯盛山城" },
    { name: "北条城", latitude: 37.3445896053039, longitude: 138.629322118434, url: "/searches?keyword=%23北条城" },
    { name: "朝倉館", latitude: 35.9997233233553, longitude: 136.295563532349, url: "/searches?keyword=%23朝倉館" },
    { name: "石神井城", latitude: 35.7375651448496, longitude: 139.596814183108, url: "/searches?keyword=%23石神井城" },
    { name: "水戸城", latitude: 36.3729350710689, longitude: 140.482830027013, url: "/searches?keyword=%23水戸城" },
    { name: "亀山城", latitude: 34.8564853264614, longitude: 136.450219538684, url: "/searches?keyword=%23亀山城" },
    { name: "桑名城", latitude: 35.0653148005209, longitude: 136.699110008645, url: "/searches?keyword=%23桑名城" },
    { name: "田辺城", latitude: 35.4461935699392, longitude: 135.330617066892, url: "/searches?keyword=%23田辺城" },
          
])