import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60)) = 20 :=
begin

  -- We start by finding the general form of the numbers that satisfy the condition.
  let f : ℤ → ℤ := λ n, (2 + 6 * n) / 6,
  -- Now we can use the definition of divisibility to rewrite the condition.
  have h : ∀ n, 6 ∣ (4 * ↑n - (2 : ℤ)) ↔ (2 + 6 * n) % 6 = 2,
  { intro n,
    have h1 : 6 ∣ (2 + 6 * n) := by { have h2 : 6 ∣ 2, {norm_num}, have h3 : 6 ∣ 6 * n, {rfl}, exact h2.div_mul h3 },
    have h2 : (4 * n - 2) % 6 = ((2 + 6 * n) % 6) - 2, by { ring },
    have h3 : (4 * n - 2) % 6 = 2, { rw h2, rw h1.div_mod, norm_num },
    have h4 : 6 ∣ (4 * n - 2), {norm_num},
    have
end
