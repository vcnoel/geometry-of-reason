import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p3
  (S : finset ℕ)
  -- note: we use (n^2 + 2 - 3 * n) over (n^2 - 3 * n + 2) because nat subtraction truncates the latter at 1 and 2
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ nat.prime (n^2 + 2 - 3 * n)) :
  S.card = 1 :=
begin

  have h₁ : ∀ (n : ℕ), n ∈ S → nat.prime (n^2 + 2 - 3 * n),
  { intros n hs,
    exact (h₀.2 hs).2 },
  have h₂ : ∀ (n : ℕ), n ∈ S → 0 < n,
  { intros n hs,
    exact (h₀.2 hs).1 },
  have h₃ : ∀ (m n : ℕ), m ∈ S → n ∈ S → m = n,
  { intros m n hm hn,
    have h₄ : m = n,
    { rw h₀.1 at hm,
      rw h₀.1 at hn,
      have h₅ : m^2 + 2 - 3 * m = n^2 + 2 - 3 * n,
      { rw hm.1,
        rw hn.1,
        exact h₁ hm.2 },
      have h₆ : m^2 - 3 * m + 2 = n^2 - 3 * n + 2,
      { rw hm.1,
        rw hn.1,
        exact h₁ hm.2 },
      have h₇ : m^
end
