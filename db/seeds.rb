# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u=User.find_or_create_by_id(1);u.name="test1";u.student_id="1111";u.department=1;u.password="11111111";u.save
u=User.find_or_create_by_id(2);u.name="test2";u.student_id="2222";u.department=1;u.password="11111111";u.save
u=User.find_or_create_by_id(3);u.name="test3";u.student_id="3333";u.department=1;u.password="11111111";u.save
u=User.find_or_create_by_id(4);u.name="test4";u.student_id="4444";u.department=2;u.password="11111111";u.save
u=User.find_or_create_by_id(5);u.name="test5";u.student_id="5555";u.department=2;u.password="11111111";u.save
u=User.find_or_create_by_id(6);u.name="test6";u.student_id="6666";u.department=2;u.password="11111111";u.save
