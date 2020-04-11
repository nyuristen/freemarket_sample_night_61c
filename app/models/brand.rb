class Brand < ActiveHash::Base
  self.data = [ {id: "nil", name: "---" },
    {id: 1, name: "シャネル"},
    {id: 2, name: "グッチ"},
    {id: 3, name: "ルイヴィトン"},
    {id: 4, name: "シュプリーム"},
    {id: 5, name: "アディダス"},
    {id: 6, name: "ナイキ"},
    {id: 7, name: "プーマ"}
  ]
end