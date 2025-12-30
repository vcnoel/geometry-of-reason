import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p24 :
  is_greatest {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} 0 :=
begin

  intros y hy,
  rcases hy with ⟨a, b, hab, habb, rfl⟩,
  have hpos : 0 < b := hab,
  have hpos' : 0 < a := habb,
  have hab' : b < a := by linarith,
  have hab'' : a ≤ b := by linarith,
  have hlogpos : 0 < real.logb a (a/b), by linarith,
  have hlogpos' : 0 < real.logb b (b/a), by linarith,
  have hlogpos'' : 0 < real.logb a (a/b) + real.logb b (b/a), by linarith,
  have hle : real.logb a (a/b) + real.logb b (b/a) ≤ 0, by linarith,
  exact le_antisymm hle hlogpos'',

end
