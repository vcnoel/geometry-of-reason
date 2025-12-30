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

  have h₄ : (a + b) % a = b % a,
  { have h₅ : (a + b) % a = ((a + b) - b) % a,
    { rw [add_sub_cancel_left] },
    have h₆ : (a + b) - b = a,
    { rw [sub_sub_cancel_left] },
    have h₇ : a % a = 0,
    { simp },
    have h₈ : b % a = (a + b) % a,
    { rw [h₅, h₆, h₇] },
    exact h₈ },
  have h₉ : (a + b + (a - b + (a + b))) = (a + b + (a + b + (b - a))),
  { have h₁₀ : a - b + (a + b) = a + b + (b - a),
    { have h₁₁ : a - b + (a + b) = (a + b) + (b - a),
      { add_assoc (a + b) (b - a) },
      have h₁₂ : (a + b) +
end
