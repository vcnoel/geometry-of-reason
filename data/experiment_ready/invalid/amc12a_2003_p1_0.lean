import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p1
  (u v : ℕ → ℕ)
  (h₀ : ∀ n, u n = 2 * n + 2)
  (h₁ : ∀ n, v n = 2 * n + 1) :
  (∑ k in finset.range(2003), u k) - (∑ k in finset.range(2003), v k) = 2003 :=
begin

  let u_sum : ℕ := ∑ k in finset.range(2003), u k,
  let v_sum : ℕ := ∑ k in finset.range(2003), v k,

  have h₂ : ∀ n, u (n + 1) = 2 * (n + 1) + 2,
  { intro n,
    rw [h₀, n.succ_eq_add_one] },
  have h₃ : ∀ n, v (n + 1) = 2 * (n + 1) + 1,
  { intro n,
    rw [h₁, n.succ_eq_add_one] },

  have h₄ : ∀ n, u (n + 1) - v (n + 1) = 2 * (n + 1) + 2 - (2 * (n + 1) + 1),
  { intro n,
    rw [h₂, h₃, n.succ_eq_add_one, n.succ_eq_add_one, sub_eq_add_neg] },
  have h₅ : ∀ n, u (n + 1) - v (n + 1) = 1,
  { intro n,

end
