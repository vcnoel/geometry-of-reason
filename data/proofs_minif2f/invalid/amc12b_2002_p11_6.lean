import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p11
  (a b : ℕ)
  (h₀ : nat.prime a)
  (h₁ : nat.prime b)
  (h₂ : nat.prime (a + b))
  (h₃ : nat.prime (a - b)) :
  nat.prime (a + b + (a - b + (a + b))) :=
begin

  have h₄ : 2 * a = 2 * (a + b) - (a - b + (a + b)),
  by { ring, },
  have h₅ : 2 * b = (a - b + (a + b)) - (2 * a),
  by { ring, },
  have h₆ : nat.pos (a - b + (a + b)) = nat.pos ((2 * a) + (2 * b)),
  by { rw h₄, rw h₅, },
  have h₇ : nat.pos (a - b + (a + b)) = nat.pos (2 * a + 2 * b),
  by { rw h₆, },
  have h₈ : nat.pos (a - b + (a + b)) = nat.pos (2 * (a + b)),
  by { rw h₇, },
  have h₉ : nat.pos (a - b + (a + b)) = nat.pos (2 * (a + b)),
  by { rw h₈, },
  have h₁₀ : a - b + (a + b) = 2 * (a + b),
 
end
