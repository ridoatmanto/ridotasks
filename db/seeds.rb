# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.create([
{task_name: 'Reporting Bugs', description: 'List all bugs found in simple term', priority: 0, due_date: '2018-3-6', status: 1},
{task_name: 'Create Documentation', description: 'Every Documentation must be sent in PDF', priority: 1, due_date: '2018-3-3', status: 0},
{task_name: 'Progress Report', description: 'Progress reporting in excel list by milestone', priority: 2, due_date: '2018-3-8', status: 1},
{task_name: 'Refactor existing Code', description: 'early task Refactor 5 page feature(minimum)', priority: 0, due_date: '2018-3-9', status: 0},
{task_name: 'Minor Bug Request', description: 'User wish edit sales contain automatic precentage', priority: 1, due_date: '2018-3-10', status: 1},
{task_name: 'Backup Database', description: 'Team has planning to change database schema so backup all database', priority: 0, due_date: '2018-3-6', status: 0},
{task_name: 'Delete unseful file', description: 'Production apps must clear from dummy file', priority: 2, due_date: '2018-3-3', status: 1},
{task_name: 'Weekly Meeting', description: 'Give suggestion to make backend statistic UI', priority: 0, due_date: '2018-3-8', status: 0},
{task_name: 'Client Meeting', description: 'Bring presentation to show hinger productivity with apps', priority: 0, due_date: '2018-3-9', status: 1},
{task_name: 'Create Backup schema', description: 'Disaster schema still not planned', priority: 2, due_date: '2018-3-10', status: 0},
{task_name: 'Complain to Internet Provider', description: 'When rain fall down, internet was so very slow', priority: 1, due_date: '2018-3-6', status: 1},
{task_name: 'Demo Apps', description: 'Demo apps to client in Kedoya', priority: 0, due_date: '2018-3-7', status: 0},
{task_name: 'Adding Forget Password feature', description: 'User could not remember well the password', priority: 1, due_date: '2018-3-8', status: 1},
{task_name: 'Analyze spam data', description: 'Create analyze prevent spam data dan reduce it drastically', priority: 2, due_date: '2018-3-9', status: 0},
{task_name: 'Rebuild interface', description: 'Create dummy interface for new site', priority: 2, due_date: '2018-3-10', status: 1},
{task_name: 'Join startup commitee', description: 'Start up commitee forum need volunteer', priority: 2, due_date: '2018-3-6', status: 0},
{task_name: 'Change company profile', description: 'think about company new branding side and sharpen it', priority: 2, due_date: '2018-3-7', status: 1},
{task_name: 'Recap Monthly outcome', description: 'How much money we get and how much fund needed', priority: 0, due_date: '2018-3-8', status: 0},
{task_name: 'Team Meeting Issue', description: 'High visitor start', priority: 2, due_date: '2018-3-1', status: 1},
{task_name: 'Sending file to Director', description: 'create recap information recap for presentation material', priority: 0, due_date: '2018-3-1', status: 0}])