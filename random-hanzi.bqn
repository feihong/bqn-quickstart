•Out "Random Hanzi of the Day"

size ← {⌊•ParseFloat ⊑𝕩}⎊8 •args
RandInt ← {𝕨+•rand.Range 1+𝕩-𝕨}
NiladicHanzi ← {𝕤⋄@+19968 RandInt 40959}
RandHanzi ← {NiladicHanzi¨𝕩⥊@}
{•Out 𝕩}˘size‿size⥊RandHanzi size⋆2
