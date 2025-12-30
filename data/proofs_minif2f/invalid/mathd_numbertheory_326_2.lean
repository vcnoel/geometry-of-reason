import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_326
  (n : ℕ)
  (h₀ : (↑n - 1) * ↑n * (↑n + 1) = (720 : ℤ)) :
  (n + 1) = 10 :=
begin

  have h₁ : n * (n + 1) * (n - 1) = 720,
  { rw h₀ },
  have h₂ : n * (n + 1) * (n - 1) = n * (n^2 - 1),
  { rw n_mul_sub_one },
  have h₃ : n^2 - 1 = 720 / n,
  { rw div_mul_eq_mul_div h₂ },
  have h₄ : n^2 - 1 = (720 : ℤ) / n,
  { rw h₃ },
  have h₅ : n^2 - 1 = (720 : ℤ),
  { rw h₄ },
  have h₆ : n^2 = 721,
  { linarith },
  have h₇ : n = 26,
  { linarith },
  have h₈ : n + 1 = 27,
  { linarith },
  have h₉ : n + 1 = 10,
  { linarith },
  exact h₉,

end
