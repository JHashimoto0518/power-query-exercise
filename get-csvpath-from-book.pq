// セルに `CsvPath` の名前を付け、CSV ファイルのパスを入力しておく。
let
    // Excel ブックに定義された名前 CsvPath から テーブルを取得
    csvPathTable = Excel.CurrentWorkbook(){[Name = "CsvPath"]}[Content],
    // テーブルの Column1 列の行をリスト化
    pathList = Table.Column(csvPathTable, "Column1"),
    // リストの先頭の要素を取得
    csvPath = pathList{0}
in
    csvPath
