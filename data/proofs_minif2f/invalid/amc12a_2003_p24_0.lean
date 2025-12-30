import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p24 :
  is_greatest {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} 0 :=
begin

  let s := {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)},
  have h1 : 0 ∈ s, by {let a := 2, let b := 1, exact ⟨a, b, one_lt_one, one_le_two, real.logb_two (2/1) + real.logb_one (1/2) = 0⟩},
  have h2 : ∀ (y : ℝ), y ∈ s → 0 ≤ y, by {intro y, intro h, rcases h with ⟨a, b, hb, hba, hy⟩,
    have hb_pos : 0 < b := (lt_of_le_and_lt one_le_one hb).symm,
    have hba_pos : 0 < b - a := (sub_pos.2 hb_pos).symm,
    have hb_le_a : b ≤ a := hba,
    have hba_ge_zero : 0 ≤ b - a := hba_pos,
    have hba_pos2 : 0 < a - b := (sub_pos.2 hb_pos).symm,

end
