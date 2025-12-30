import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p22
  (x : ℝ) :
  49 ≤ ∑ k in finset.Icc 1 119, abs (↑k * x - 1) :=
begin

  let f := λ k, abs (k * x - 1),
  have hf : ∀ k ∈ finset.Icc 1 119, 0 ≤ f k := by {
    intro k hk,
    have h1 : 0 ≤ k * x := by { apply mul_nonneg, exact zero_le x },
    have h2 : 0 ≤ 1 := by { apply zero_le_one },
    have h3 : f k = abs (k * x - 1) = abs (k * x - 1 + (1 - 1)) = abs ((k * x - 1) + (1 - 1)) ≤ abs (k * x - 1) + abs (1 - 1) := by { apply abs_sub_le },
    rw h3 at h1,
    have h4 : f k ≤ k * x + 1 := by { apply le_abs_add, exact h1 },
    have h5 : 0 ≤ f k := by { apply le_abs_self, exact h4 },
    exact h5
  },
  have hsum : ∑ k in finset.Icc 1 119, f k ≤ ∑ k in finset.Icc 
end
