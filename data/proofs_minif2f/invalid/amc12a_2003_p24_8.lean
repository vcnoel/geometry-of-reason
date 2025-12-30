import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p24 :
  is_greatest {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} 0 :=
begin

  let z := {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)},
  have hz : is_greatest z 0, from is_greatest_of_subset (λ y, ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)),
  have h1 : ∀ a b, 1 < b ∧ b ≤ a → 0 ≤ real.logb a (a/b) + real.logb b (b/a), from
    λ a b h, by linarith,
  have h2 : ∀ y, y ∈ z → 0 ≤ y, from λ y h, h1 _ _ (classical.choice h).1 (classical.choice h).2,
  have h3 : ∀ y, y ∈ z → 0 ≤ y - 0, from λ y h, h2 y h,
  show is_greatest z 0, from is_greatest_of_subset h3,

end
