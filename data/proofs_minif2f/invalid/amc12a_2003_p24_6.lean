import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p24 :
  is_greatest {y : ℝ | ∃ (a b : ℝ), 1 < b ∧ b ≤ a ∧ y = real.logb a (a/b) + real.logb b (b/a)} 0 :=
begin

  let y := 0,
  let a := 1,
  let b := 1,
  have hyp := real.logb a (a/b) + real.logb b (b/a) = 0,
  show ∀ (x : ℝ), x ≤ y,
  assume x,
  have x_le_0 : x ≤ 0,
  by {
    apply real.log_le_log,
    apply hyp,
    apply le_refl,
    apply le_refl,
  },
  exact x_le_0,

end
