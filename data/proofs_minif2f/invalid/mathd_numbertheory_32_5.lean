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

  have h₁ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36,
  from h₀,
  have h₂ : ∀ (n : ℕ), n ∈ S ↔ n ∈ {1, 2, 3, 4, 6, 9, 12, 18, 36},
  from by { refine λ n, iff.trans _ h₁; exact finset.mem_inserts _ _ },
  have h₃ : ∀ (n : ℕ), n ∈ S → n ∈ {1, 2, 3, 4, 6, 9, 12, 18, 36},
  from by { rintros n h; exact h₂.1 h },
  have h₄ : ∀ (n : ℕ), n ∈ S → n ∈ finset {1, 2, 3, 4, 6, 9, 12, 18, 36},
  from by { rintros n h; exact h₃ h },
  have h₅ : S = {1, 2, 3, 4, 6, 9, 12, 18, 36},
  from by { refine finset
end
