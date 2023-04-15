•Out "Random Hanzi of the Day"

size ← {𝕤⋄⌊•ParseFloat⊑•args}⎊8 @
RandInt ← {𝕨+𝕩•rand.Range∘¬𝕨}
NiladicHanzi ← {𝕤⋄@+19968 RandInt 40959}
hanzi ← NiladicHanzi¨(size‿size)⥊@
{•Out 𝕩}˘hanzi
