import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aimeII_2020_p6
  (t : ℕ → ℚ)
  (h₀ : t 1 = 20)
  (h₁ : t 2 = 21)
  (h₂ : ∀ n ≥ 3, t n = (5 * t (n - 1) + 1) / (25 * t (n - 2))) :
  ↑(t 2020).denom + (t 2020).num = 626 :=
begin

  -- 2020 = 3 * 674 + 2
  -- t 2020 = 5 * t 2019 + 1
  --        = 25 * t 2018 + 5 * t 2019 + 1
  --        = 25 * (5 * t 2017 + 1) + 5 * (25 * t 2017 + 5 * t 2018 + 1) + 1
  --        = 25 * (5 * (5 * t 2016 + 1) + 1) + 5 * (25 * (5 * t 2016 + 1) + 5 * (25 * t 2016 + 5 * t 2017 + 1) + 1) + 1
  --        = 25 * (5 * (5 * (5 * t 2015 + 1) + 1) + 1) + 5 * (25 * (5 * (5 * t 2015 + 1) + 1) + 5 * (25 * (5 * t 2015 + 1) + 5 * (25
end
