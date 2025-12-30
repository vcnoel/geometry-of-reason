import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_323
  (σ : equiv ℝ ℝ)
  (h : ∀ x, σ.1 x = x^3 - 8) :
  σ.2 (σ.1 (σ.2 19)) = 3 :=
begin

  -- We first need to compute σ.1 (σ.2 19)
  let a := σ.2 19,
  have ha : σ.1 a = a^3 - 8,
  { rw h },
  -- Now we need to compute σ.2 (σ.1 a)
  let b := σ.1 a,
  have hb : σ.2 b = (b^3 - 8)^3 - 8,
  { rw h },
  -- We can now plug in the value of a
  have hb' : σ.2 b = (a^3 - 8)^3 - 8,
  { rw [ha, hb] },
  -- Finally, we can plug in the value of a
  have hb'' : σ.2 b = (19^3 - 8)^3 - 8,
  { rw [a, hb'] },
  -- We can now compute the value of σ.2 b
  have hb''' : σ.2 b = 3^3 - 8,
  { rw [hb'', a] },
  -- We can now conclude the proof
  exact hb'''.symm,

end
