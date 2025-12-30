import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2020_p13
  (a b c : ℕ)
  (n : nnreal)
  (h₀ : n ≠ 1)
  (h₁ : 1 < a ∧ 1 < b ∧ 1 < c)
  (h₂ : (n * ((n * (n^(1 / c)))^(1 / b)))^(1 / a) = (n^25)^(1 / 36)) :
  b = 3 :=
begin

  have h₃ : n^(1 / a) * ((n^(1 / b)) * (n^(1 / c)))^(1 / (b * c)) = n^(25 / 36),
  by {rw h₂, refl},
  have h₄ : n^(1 / a) * n^(1 / (b * c)) * (n^(1 / b))^(1 / (b * c)) = n^(25 / 36),
  by {rw h₃, refl},
  have h₅ : n^(1 / a) * n^(1 / (b * c)) * n^(1 / (b * c)) = n^(25 / 36),
  by {rw h₄, refl},
  have h₆ : n^(1 / a) * n^(2 / (b * c)) = n^(25 / 36),
  by {rw h₅, refl},
  have h₇ : n^(1 / a) = n^(25 / 36) / n^(2 / (b * c)),
  by {rw h₆, refl},
  have h₈ : n^(1 / a) = n^((25 - 
end
