# encoding: utf-8
require 'watir-webdriver'
# 创建一个Chrome的实例      
$i=0
$ie = Watir::Browser.new:chrome        
# 或者在创建的同时直接转到页面      
arrmail=["962481891@qq.com",
"740846983@qq.com",
"847886316@qq.com",
"1036777545@qq.com",
"752847337@qq.com",
"2621283024@qq.com",
"734110053@qq.com",
"912408258@qq.com",
"819230339@qq.com",
"87857329@qq.com",
"263332746@qq.com",
"1303342232@qq.com",
"11537563@qq.com",
"1225562682@qq.com",
"2271469797@qq.com",
"1131735219@qq.com",
"1850952028@qq.com",
"768090225@qq.com",
"675610785@qq.com",
"3802546427@qq.com",
"2323330198@qq.com",
"527485273@qq.com",
"303093195@qq.com",
"137877194@qq.com",
"1925875965@qq.com",
"meitian4011@sina.com",
"1224712940@qq.com",
"81777784@qq.com",
"jackhenry2001@yahoo.cn",
"happiness1001@yahoo.cn",
"993949528@qq.com",
"djhspace@163.com",
"1138611840@qq.com",
"499019120@qq.com",
"lujinliang2012@126.com",
"2435656462@qq.com",
"673621430@qq.com",
"380498205@qq.com",
"1270292873@qq.com",
"195510410@qq.com",
"784830204@qq.com",
"liyajun20002008@163.com",
"799183371@qq.com",
"464463160@qq.com",
"546016185@qq.com",
"jch147258369@163.com",
"936400640@163.com",
"843179839@qq.com",
"934988886@qq.com",
"yuzhouzongbu@126.com",
"1456705837@qq.com",
"caodeyv@126.com",
"496738452@qq.com",
"573506286@qq.com",
"183664398@qq.com",
"15455182@qq.com",
"wurubing0551@163.com",
"343286376@qq.com",
"995238768@qq.com",
"28119052@qq.com",
"10013618@qq.com",
"76518768@qq.com",
"576046966@qq.com",
"853996055@qq.com",
"yanghua924@sina.cn",
"56785867@qq.com",
"qiufengcqq@126.com",
"88605205@qq.com",
"742130163@qq.com",
"2417968330@qq.com",
"767471540@qq.com",
"arlanzendv@qq.com",
"736989552@qq.com",
"467045441@qq.com",
"181443649@qq.com",
"cw112233@163.com",
"475868902@qq.com",
"185604277@qq.com",
"530367794@qq.com",
"980940026@qq.com",
"363142410@qq.com",
"1595953206@qq.com",
"83986685@qq.com",
"35611294@qq.com",
"714438331@qq.com",
"252098285@qq.com",
"632926643@qq.com",
"94079208@qq.com",
"690171449@qq.com",
"34566516@qq.com",
"chwangying1@163.com",
"tjgsws@163.com",
"1659255564@qq.com",
"360789037@qq.com",
"840539649@qq.com",
"546621284@qq.com",
"59312958@qq.com",
"584820522@qq.com",
"249820166@qq.com",
"89431730@qq.com",
"352874209@qq.com",
"1964929259@qq.com",
"136344267@qq.com",
"1451997782@qq.com",
"zzdtg@sina.cn",
"1045780552@qq.com",
"284187240@qq.com",
"1123024003@qq.com",
"304759802@qq.com",
"409124176@qq.com",
"84342521@qq.com",
"vivianforever_ok@163.com",
"zg880909@126.com",
"1093791438@qq.com",
"404764708@qq.com",
"2390724436@qq.com",
"446295440@qq.com",
"809056502@qq.com",
"786997834@qq.com",
"1156260167@qq.com",
"593662267@qq.com",
"katong1314@qq.com",
"2243337153@qq.com",
"1014635643@qq.com",
"1275944399@qq.com",
"2452634673@qq.com",
"1476628027@qq.com",
"2587074284@qq.com",
"1072714076@qq.com",
"972994112@qq.com",
"1060358918@qq.com",
"1711933224@qq.com",
"2088748260@qq.com",
"957089315@qq.com",
"1446951741@qq.com",
"suyan1994418@qq.com",
"328431801@qq.com",
"2292312437@qq.com",
"429261787@qq.com",
"2496524585@qq.com",
"2290794236@qq.com",
"1723686132@qq.com",
"551968589@qq.com",
"1440878991@qq.com",
"731086374@qq.com",
"1261076571@qq.cim",
"1174195767@qq.com",
"1584492226@qq.com",
"947166751@qq.com",
"1962774748@qq.com",
"1316552815@qq.com",
"1009537924@qq.com",
"2944308385@qq.com",
"749996978@qq.com",
"1596988639@qq.com",
"1439386725@qq.com",
"2844346752@qq.com",
"820191479@qq.com",
"903113795@qq.com",
"906933221@qq.com",
"804896296@qq.com",
"1152053297@qq.com",
"2477973178@qq.com",
"597114596@qq.com",
"863390438@qq.com",
"551968589@qq.com",
"783162259@qq.com",
"2987116026@qq.com",
"2782672773@qq.com",
"2896675191@qq.com",
"2667327541@qq.com",
"905463117@qq.com",
"1119845806@qq.com",
"1507744902@qq.com",
"1835662663@qq.com",
"5549102@qq.com",
"994633464@qq.com",
"1670275607@qq.com",
"2276670618@qq.com",
"29919047277@qq.com",
"1462252581@qq.com",
"1214907532@qq.com",
"1150995945@qq.com",
"1197358143@qq.com",
"1844633468@qq.com",
"396811570@qq.con",
"1678179513@qq.com",
"1097037789@qq.com",
"2272546845@qq.com",
"1176823985@qq.com",
"2352977130@qq.com",
"957277614@qq.com",
"2513749881@qq.com"]

arrname=["作业你和考卷私奔吧",
"没胸还很凶",
"你久居我心却不曾交过房租",
"朕射妳无罪",
"万花丛中一朵菊",
"你棺材是翻盖的还是滑盖的",
"超龄儿童",
"大王叫莪来巡山哟",
"姑娘不要怕我不是什么好人",
"骑猪赏月看嫦娥",
"人不喂鸡天猪地灭",
"你若安好那还得了",
"姐的智商都拿去卖萌了",
"时光是把猪饲料",
"姐与爱情水土不服",
"有多少爱可以胡来",
"不给糖吃就胡闹",
"你长了一张欠吻的嘴",
"二到无穷大",
"菊部地区有血",
"吃素的蚊子",
"巴拉拉能量作业消失",
"中华一样的高傲",
"不爱才搞暧昧",
"你们不会忘记我",
"死后请帮我在坟前弄个wifi",
"撑死也算工伤",
"社会太够人心太假",
"Forvere浅念",
"不平胸何以平天下",
"对不起手抖了把你删了",
"麻麻骂我是狗娘养的",
"夏末凉城",
"囍遇",
"鹿锅里有块吴年糕",
"你比柠檬更萌比蓝莓更美",
"弥音",
"颜尐汐",
"玛丽莲萌鹿",
"千不该万不该都是莪活该",
"不喊痛不代表没感觉",
"菰獨成性不過是厌惡人心",
"被遺忘在街角的幸福",
"卸载永远比安装快",
"浅巷墨漓",
"回眸只为那一抹浅笑",
"吢庝菿爆也要強顔歡笑",
"吧唧一口吃掉你",
"放开那个女孩让我来",
"半世陌影惹迷离",
"浅爱",
"天哭蓝了海",
"心之所向便是光",
"草泥马驾驾驾",
"我要回幼儿园当学霸",
"你你就象我昨天买的一口锅",
"莫让我发宝气",
"今天不要再吃这么多了呢",
"你是谁啊",
"JustInboxlove",
"mynameis帅哥很帅",
"你就是一个大坏蛋",
"我的前世是一个大魔王",
"我今天一定要成为海贼王",
"丽娜因巴斯龙破斩",
"发奥利金saigao",
"荷塘月色也可以非常的美"]

def get_code
	if $i ==0
		puts "输入验证码"
		$i+=1
	else
		puts "刚才错误了，再输入一次"
	end
	vcode =gets
	$ie.text_field(:id,"signupcode").set vcode
	$ie.button(:id,"doLogin").click
	sleep(3)
end

for m in 56..100
s=m+1
url ="http://www.douguo.com/signup.html"
 $ie.goto url 
$ie.text_field(:id,"email").set arrmail[m]
$ie.text_field(:id,"nickname").set arrname[m]
$ie.text_field(:id,"passwd").set "justlovelove"
$ie.text_field(:id,"dpasswd").set "justlovelove"
get_code
while $ie.div(:id,"DialogTipSpan").exists?
	get_code()
end
sleep(1) 
url ="http://www.douguo.com/user/profile"
$ie.goto url

#上传头像
filename="C:\\Users\\jh\\Desktop\\go2\\#{s}.jpg"
$ie.button(:id,"butphoto").click
$ie.file_field(:id,"fileToUpload").set(filename)
$ie.button(:text,"上传照片").click
$ie.button(:text,"保存头像").click
#随机更改个人设置
yearToAdd=[*10..26].sample
month=['01','02','03','04','05','06','07','08','09','10','11','12'].sample
day=['01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28'].sample
year=(1970+yearToAdd).to_s
sex=['男','女'].sample

#更改生日
$ie.select_list(:name => 'year').select year
$ie.select_list(:name => 'month').select month
$ie.select_list(:name => 'day').select day

#设置性别
$ie.radio(:value,sex).set

#设置所在地

arrProvince = ['河南','辽宁','浙江']

province = arrProvince.sample


if(province=='河南')
	$ie.select_list(:name => 'province').select province
end

if(province=='辽宁')
	$ie.select_list(:name => 'province').select province
	$ie.select_list(:name => 'city').select '大连市'
end

if(province=='浙江')
	$ie.select_list(:name => 'province').select province
end


#点击保存按钮
$ie.button(:id,'buttonSave').click



sleep(15)
url ="http://www.douguo.com/dish/1131095"
$ie.goto url
$ie.link(:id,"like_num").click
sleep(3)

url ="http://www.douguo.com/logout.html"
$ie.goto url

#$ie.close_all
end