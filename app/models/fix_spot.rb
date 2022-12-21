class FixSpot < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'エンジン' },
    { id: 3, name: '吸気系・排気系' },
    { id: 4, name: 'エンジン電装' },
    { id: 5, name: 'ミッション・駆動系' },
    { id: 6, name: '足回り' },
    { id: 7, name: 'ブレーキ系統' },
    { id: 8, name: 'ボディ関連' },
    { id: 9, name: '一般電装・その他電装系' },
    { id: 10, name: '内装・アクセサリー' },
    { id: 11, name: 'その他' },

  ]

  include ActiveHash::Associations
	has_many :vehicle_fixes

  end
