class Record < ActiveRecord::Base
  attr_accessible :score, :action, :user
  ACTIONS = {
    'shangfang'=>1,
    'xiahai'=>1,
    'jianta'=>3,
    'zhengjiu'=>-1
  }
  USERS = [
    'gabriel',
    'tony',
    'jerry',
    'ares',
    'dean',
    'terry',
    'lena',
    'shell',
    'selina',
    'vivian',
    'bob',
    'james',
    'kevin'
  ]
  before_save do |r|
    r.score = Record::ACTIONS[r.action]
  end
end
