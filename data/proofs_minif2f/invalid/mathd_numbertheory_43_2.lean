import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  let A : set ℕ := {n : ℕ | 15^n ∣ 942! },
  have hA : is_greatest A 233 :=?,
  have hA_le : ∀ a ∈ A, a ≤ 233 :=?,
  have hA_eq : ∀ a ∈ A, a = 233 := by { rintro a ⟨ha, rfl⟩, exact ha },
  exact hA_eq,

end
