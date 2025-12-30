import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p10
  (p q : ℝ)
  (a : ℕ → ℝ)
  (h₀ : ∀ n, a (n + 2) - a (n + 1) = a (n + 1) - a n)
  (h₁ : a 1 = p)
  (h₂ : a 2 = 9)
  (h₃ : a 3 = 3 * p - q)
  (h₄ : a 4 = 3 * p + q) :
  a 2010 = 8041 :=
begin

  induction a 2010 on (a 0, a 1, a 2, a 3, a 4),
  all_goals {apply h₀; assumption},
  all_goals {apply h₁; assumption},
  all_goals {apply h₂; assumption},
  all_goals {apply h₃; assumption},
  all_goals {apply h₄; assumption},
  all_goals {show a 2010 = 8041; apply p; assumption;}

end
