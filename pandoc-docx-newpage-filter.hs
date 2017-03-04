module Main where
import Text.Pandoc.JSON

pagegBreakLandscapeXml :: String
pagegBreakLandscapeXml = "<w:p><w:pPr><w:sectPr> <w:pgSz w:w=\"15840\" w:h=\"12240\"  w:orient=\"landscape\" /></w:sectPr></w:pPr></w:p>"

pageBreakXml :: String
pageBreakXml = "<w:p><w:pPr><w:sectPr> <w:pgSz w:w=\"12240\" w:h=\"15840\"/> </w:sectPr></w:pPr></w:p>"

pageBreakLandscapeBlock :: Block
pageBreakBlock :: Block
pageBreakLandscapeBlock = RawBlock (Format "openxml") pagegBreakLandscapeXml
pageBreakBlock = RawBlock (Format "openxml") pageBreakXml

insertPgBrks :: Block -> Block
insertPgBrks (Para [Str "PAGEBREAKLANDSCAPE"]) = pageBreakLandscapeBlock
insertPgBrks (Para [Str "PAGEBREAK"]) = pageBreakBlock
insertPgBrks blk = blk

main = toJSONFilter insertPgBrks
