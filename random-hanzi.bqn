•Out "Random Hanzi of the Day"

size ← {⌊•ParseFloat ⊑𝕩}⎊8 •args
RandInt ← {𝕨+•rand.Range 1+𝕩-𝕨}
NiladicHanzi ← {𝕤⋄@+19968 RandInt 40959}
hanzi ← NiladicHanzi¨(size×size)⥊0
{•Out 𝕩}˘size‿size⥊hanzi
