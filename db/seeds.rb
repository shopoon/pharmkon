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

l=Labolatory.find_or_create_by_id(1);l.name='大野研';l.yaku=1;l.yakka=4;l.total=4;l.save;
l=Labolatory.find_or_create_by_id(2);l.name='高須研';l.yaku=1;l.yakka=4;l.total=4;l.save;
l=Labolatory.find_or_create_by_id(3);l.name='竹本研';l.yaku=1;l.yakka=4;l.total=4;l.save;
l=Labolatory.find_or_create_by_id(4);l.name='佐治研';l.yaku=4;l.yakka=1;l.total=4;l.save;
l=Labolatory.find_or_create_by_id(5);l.name='橋田研';l.yaku=4;l.yakka=1;l.total=4;l.save;
l=Labolatory.find_or_create_by_id(6);l.name='高倉研';l.yaku=4;l.yakka=1;l.total=4;l.save;

#a=Apply.find_or_create_by_id(1);a.student_id="1111";a.first=1;a.second=2;a.third=3;a.save;
#a=Apply.find_or_create_by_id(2);a.student_id="2222";a.first=2;a.second=3;a.third=1;a.save;
#a=Apply.find_or_create_by_id(3);a.student_id="3333";a.first=5;a.second=2;a.third=3;a.save;
#a=Apply.find_or_create_by_id(4);a.student_id="4444";a.first=2;a.second=1;a.third=4;a.save;
#a=Apply.find_or_create_by_id(5);a.student_id="5555";a.first=3;a.second=6;a.third=5;a.save;
#a=Apply.find_or_create_by_id(6);a.student_id="6666";a.first=4;a.second=2;a.third=3;a.save;
