import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60)) = 20 :=
begin

  have h1 : ∀ n : ℕ, 6 ∣ (4 * n - 2) ↔ 3 ∣ (2 * n - 1),
  { intro n,
    split,
    { assume h,
      have h2 : 6 ∣ (4 * n - 2),
      { use 1,
        rw [← mul_assoc, mul_comm, mul_assoc],
        refine mul_left_inj' (2 : ℕ) _,
        rw [mul_comm, ← h, mul_assoc],
        refine mul_left_inj' (2 : ℕ) _,
        rw [mul_comm, mul_one],
        exact h },
      have h3 : 3 ∣ 2 * n - 1,
      { use (4 * n - 2) / 6,
        rw [← h2],
        refine mul_left_inj' (2 : ℕ) _,
        exact h2 },
      exact h3 },
    { assume h,
      have h2 : 3 ∣ 2 * n - 1,
      { use (2 * n - 1) / 3,
        exact h },
      have h3 : 6 ∣ (4 * n - 
end
