# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#u=User.find_or_create_by_id(1);u.name="test1";u.student_id="1111";u.department=1;u.password="11111111";u.total=100;u.count=1;u.save
#u=User.find_or_create_by_id(2);u.name="test2";u.student_id="2222";u.department=1;u.password="11111111";u.total=87;u.count=1;u.save
#u=User.find_or_create_by_id(3);u.name="test3";u.student_id="3333";u.department=1;u.password="11111111";u.total=50;u.count=1;u.save
#u=User.find_or_create_by_id(4);u.name="test4";u.student_id="4444";u.department=2;u.password="11111111";u.total=92;u.count=1;u.save
#u=User.find_or_create_by_id(5);u.name="test5";u.student_id="5555";u.department=2;u.password="11111111";u.total=67;u.count=1;u.save
#u=User.find_or_create_by_id(6);u.name="test6";u.student_id="6666";u.department=2;u.password="11111111";u.total=88;u.count=1;u.save

l=Labolatory.find_or_create_by_id(1);l.name='薬品合成化学（高須）';l.yaku=1;l.yakka=4;l.total=4;l.save
l=Labolatory.find_or_create_by_id(2);l.name='薬品分子化学（竹本）';l.yaku=1;l.yakka=4;l.total=4;l.save
l=Labolatory.find_or_create_by_id(3);l.name='薬品資源学（伊藤美）';l.yaku=1;l.yakka=2;l.total=2;l.save
l=Labolatory.find_or_create_by_id(4);l.name='薬品機能解析学（松崎）';l.yaku=1;l.yakka=4;l.total=4;l.save
l=Labolatory.find_or_create_by_id(5);l.name='構造生物薬学（加藤）';l.yaku=1;l.yakka=4;l.total=4;l.save
l=Labolatory.find_or_create_by_id(6);l.name='製剤機能解析学（石濱）';l.yaku=1;l.yakka=4;l.total=4;l.save
l=Labolatory.find_or_create_by_id(7);l.name='生体分子認識学（竹島）';l.yaku=2;l.yakka=4;l.total=4;l.save
l=Labolatory.find_or_create_by_id(8);l.name='生体機能解析学（金子）';l.yaku=4;l.yakka=1;l.total=4;l.save
l=Labolatory.find_or_create_by_id(9);l.name='遺伝子薬学（三宅）';l.yaku=1;l.yakka=2;l.total=2;l.save
l=Labolatory.find_or_create_by_id(10);l.name='生体情報制御学（中山）';l.yaku=1;l.yakka=4;l.total=4;l.save
l=Labolatory.find_or_create_by_id(11);l.name='薬品動態制御学（橋田）';l.yaku=4;l.yakka=1;l.total=4;l.save
l=Labolatory.find_or_create_by_id(12);l.name='薬品作用解析学（久米）';l.yaku=4;l.yakka=1;l.total=4;l.save
l=Labolatory.find_or_create_by_id(13);l.name='病態機能分析学（佐治）';l.yaku=4;l.yakka=1;l.total=4;l.save
l=Labolatory.find_or_create_by_id(14);l.name='病態情報薬学（高倉）';l.yaku=4;l.yakka=1;l.total=4;l.save
l=Labolatory.find_or_create_by_id(15);l.name='薬理ゲノミクス・ゲノム創薬科学（平澤）';l.yaku=1;l.yakka=2;l.total=2;l.save
l=Labolatory.find_or_create_by_id(16);l.name='臨床薬学教育（矢野育）';l.yaku=2;l.yakka=0;l.total=2;l.save
l=Labolatory.find_or_create_by_id(17);l.name='システムバイオロジー（岡村）';l.yaku=2;l.yakka=4;l.total=4;l.save
l=Labolatory.find_or_create_by_id(18);l.name='システムケモセラピー（掛谷）';l.yaku=1;l.yakka=4;l.total=4;l.save
l=Labolatory.find_or_create_by_id(19);l.name='精密有機合成化学（川端）';l.yaku=0;l.yakka=3;l.total=3;l.save
l=Labolatory.find_or_create_by_id(20);l.name='生体機能化学（二木）';l.yaku=0;l.yakka=3;l.total=3;l.save
l=Labolatory.find_or_create_by_id(21);l.name='医療薬剤学（松原）';l.yaku=4;l.yakka=0;l.total=4;l.save
l=Labolatory.find_or_create_by_id(22);l.name='生理活性制御学（井垣）';l.yaku=0;l.yakka=2;l.total=2;l.save
l=Labolatory.find_or_create_by_id(23);l.name='神経機能制御学（根岸）';l.yaku=0;l.yakka=2;l.total=2;l.save
l=Labolatory.find_or_create_by_id(24);l.name='統合ゲノミクス（五斗）';l.yaku=0;l.yakka=3;l.total=3;l.save
l=Labolatory.find_or_create_by_id(25);l.name='分子設計情報（馬見塚）';l.yaku=0;l.yakka=2;l.total=2;l.save
l=Labolatory.find_or_create_by_id(26);l.name='ケモゲノミクス・薬品有機製造学（大野）';l.yaku=1;l.yakka=4;l.total=4;l.save

#a=Apply.find_or_create_by_id(1);a.student_id="1111";a.first=1;a.second=2;a.third=3;a.save;
#a=Apply.find_or_create_by_id(2);a.student_id="2222";a.first=2;a.second=3;a.third=1;a.save;
#a=Apply.find_or_create_by_id(3);a.student_id="3333";a.first=5;a.second=2;a.third=3;a.save;
#a=Apply.find_or_create_by_id(4);a.student_id="4444";a.first=2;a.second=1;a.third=4;a.save;
#a=Apply.find_or_create_by_id(5);a.student_id="5555";a.first=3;a.second=6;a.third=5;a.save;
#a=Apply.find_or_create_by_id(6);a.student_id="6666";a.first=4;a.second=2;a.third=3;a.save;
