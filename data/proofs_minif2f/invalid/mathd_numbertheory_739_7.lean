import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_739 :
  9! % 10 = 0 :=
begin

  have h1 : ∀ (n : ℕ), n % 10 = 0 → n % 2 = 0,
    by { intros n h, induction n with n IH, { simp [h] }, { cases n % 2 with h h, { exfalso, exact nat.succ_pos n }, { exact h } } },
  have h2 : ∀ (n : ℕ), n % 10 = 0 → n % 5 = 0,
    by { intros n h, induction n with n IH, { simp [h] }, { cases n % 5 with h h, { exfalso, exact nat.succ_pos n }, { exact h } } },
  have h3 : ∀ (n : ℕ), n % 10 = 0 → n % 10 = 0,
    by { intros n h, exact h },
  have h4 : ∀ (n : ℕ), n % 10 = 0 → 10 % n = 0,
    by { intros n h, exact absurd (10 % n = 0) (lt_irrefl 10) },
  have h5 : ∀ (n : ℕ), n % 10 = 0
end
