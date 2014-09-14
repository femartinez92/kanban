# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Board.delete_all
List.delete_all
BoardList.delete_all
Task.delete_all
board1 = Board.create(Project:'proyecto 1')
lists = List.create([{Name: 'List 1',position: 2},{Name: 'List 2',position: 1}])
BoardList.create([{board_id: board1.id, list_id: lists[0].id},{board_id: board1.id, list_id: lists[1].id}])
tasks = Task.create([{title: 'Task 1.1', list_id: lists[0].id,position: 1},{title: 'Task 1.2',position: 3, list_id: lists[0].id},{title: 'Task 1.3' ,position: 2,list_id: lists[0].id},{title: 'Task 2.1',position: 1, list_id: lists[1].id}])