import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_32
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36) :
  ∑ k in S, k = 91 :=
begin

  -- 36 = 2^2 * 3^2
  have h₁ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36, from h₀,
  have h₂ : ∀ (n : ℕ), n ∈ S ↔ n ∣ (2^2 * 3^2), from h₁,

  -- 36 = 2^2 * 3^2 = 4 * 9
  have h₃ : ∀ (n : ℕ), n ∈ S ↔ n ∣ (4 * 9), from h₂,

  -- 36 = 2^2 * 3^2 = 4 * 9 = 2^2 * 3^2
  have h₄ : ∀ (n : ℕ), n ∈ S ↔ n ∣ (2^2 * 3^2), from h₃,

  -- 36 = 2^2 * 3^2 = 4 * 9 = 2^2 * 3^2
  have h₅ : ∀ (n : ℕ), n ∈ S ↔ n ∣ (4 * 9), from h₄,

  -- 36 = 2^2 *
end
