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

  have h₃ : n^(1 / c) ≠ 1,
  from pow_ne_one (ne_of_gt (h₁.right)),

  have h₄ : n^(1 / a) ≠ 1,
  from pow_ne_one (ne_of_gt (h₁.left)),

  have h₅ : n^(1 / b) ≠ 1,
  from pow_ne_one (ne_of_gt (h₁.mid)),

  have h₆ : (n^(1 / c))^(1 / b) ≠ 1,
  from pow_ne_one (h₃ ^ (1 / b)),

  have h₇ : ((n * ((n^(1 / c)))^(1 / b)))^(1 / a) ≠ 1,
  from pow_ne_one ((n * ((n^(1 / c))^(1 / b))) ^ (1 / a)),

  have h₈ : (n^(1 / c))^(1 / b) = ((n^(1 / b))^(1 / c)),
  by {
    rw pow_pow,
  },

  have h₉ : ((n^(1 / b))^(1 / c))^(1 / a) = (n^(1 /
end
