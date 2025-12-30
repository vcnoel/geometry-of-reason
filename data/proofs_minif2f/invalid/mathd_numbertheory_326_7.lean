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

  have h₁ : (n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) * (n + 6) * (n + 7) * (n + 8) * (n + 9) * (n + 10) = 120 * 119 * 118 * 117 * 116 * 115 * 114 * 113 * 112 * 111 * 110 * 109 * 108 * 107 * 106 * 105 * 104 * 103 * 102 * 101 * 100,
    by {calc
      (n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) * (n + 6) * (n + 7) * (n + 8) * (n + 9) * (n + 10)
      = (n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) * (n + 6)
end
