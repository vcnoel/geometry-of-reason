import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60)) = 20 :=
begin

  let f := λ n, 6 ∣ (4 * ↑n - (2 : ℤ)),
  let A := finset.filter f (finset.range 60),
  let B := finset.filter f (finset.range 30),
  let C := finset.filter f (finset.range 15),
  let D := finset.filter f (finset.range 7),
  have h₁ : A = B ∪ C ∪ D, by { ext1 n, simp, },
  have h₂ : B ∩ C ∩ D = ∅, by { rintro ⟨n, _, _, _⟩, exact finset.not_mem_range_of_lt (20 : ℕ), },
  have h₃ : B ⊆ A, by { rintro n ⟨_, _⟩, exact ⟨n, _⟩, },
  have h₄ : C ⊆ A, by { rintro n ⟨_, _⟩, exact ⟨n, _⟩, },
  have h₅ : D ⊆ A, by { rintro n ⟨_, _⟩, exact ⟨n, _⟩, },
  have h₆ : A ⊆ B ∪ C ∪ D, by { rintro
end
