import measure_theory.probability_mass_function

variables (A B : Type)
          
lemma bind_skip (p : pmf A) (f g : A → pmf B) : 
  (∀ (a : A), f a = g a) → p.bind f = p.bind g :=
begin
  intro ha, 
  ext,
  simp,
  simp_rw ha,
end

lemma bind_skip_const (pa : pmf A) (pb : pmf B) (f : A → pmf B) : 
  (∀ (a : A), f a = pb) → pa.bind f = pb :=
begin
  intro ha, 
  ext,
  simp,
  simp_rw ha,
  simp [nnreal.tsum_mul_right],
end