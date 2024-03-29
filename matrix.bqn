# Determinant of 2x2 matrix
Det2 ← {[a‿b,c‿d] : (a×d)-b×c}

¯2=Det2 [1‿2,3‿4]

# Minor of 3x3 matrix
Minor ← {(𝕨≠↕≠𝕩)/𝕩}{⟨i,j⟩←𝕨 ⋄ Det2 j⊸𝔽˘ i𝔽𝕩}

x ← 1+3‿3⥊↕9

¯3=0‿0 Minor x
¯12=1‿1 Minor x
¯6=1‿2 Minor x

# Determinant of 3x3 matrix
Det3 ← {[a‿b‿c,d‿e‿f,g‿h‿i] : M←Minor⟜𝕩 ⋄ (a×M 0‿0)+(-b×M 0‿1)+c×M 0‿2}

¯120=Det3 [0‿¯3‿6,8‿8‿8,¯6‿¯12‿1]

¯13=Det3 [0‿¯1‿3,2‿0‿1,7‿¯1‿0]

# Cross product of vectors
Cross ← {a‿b‿c 𝕊 d‿e‿f :
  M←Minor⟜[1‿1‿1,a‿b‿c,d‿e‿f]
  (M 0‿0)∾(-M 0‿1)∾M 0‿2
}

⟨¯8,¯13,¯28⟩≡3‿¯4‿1 Cross ¯7‿0‿2

⟨¯18,19,¯61⟩≡¯3‿10‿4 Cross 4‿7‿1

# Inverse of 2x2 or 3x3 matrix
Inverse ← {
  [a‿b,c‿d] : (÷Det2 𝕩)×[⟨d,-b⟩,⟨-c,a⟩] ;
  [a‿b‿c,d‿e‿f,g‿h‿i] :
    M ← Minor⟜𝕩 ⋄ s ← 3‿3⥊1‿¯1
    (÷Det3 𝕩)×⍉s×M¨∾⌜˜↕3
}


[⟨1÷11,1÷11⟩,⟨¯2÷11,9÷11⟩]≡Inverse [9‿¯1,2‿1]

[¯4.5‿7‿¯1.5,¯2‿4‿¯1,1.5‿¯2‿0.5]≡Inverse [0‿1‿2,1‿0‿3,4‿¯3‿8]
