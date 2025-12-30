import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_393
  (σ : equiv ℝ ℝ)
  (h₀ : ∀ x, σ.1 x = 4 * x^3 + 1) :
  σ.2 33 = 2 :=
begin

  calc
    σ.2 33 = σ.2 (33 : ℝ) : by refl
   ... = σ.1 33 : by { apply σ.2, exact 33 }
   ... = 4 * 33^3 + 1 : by { rw h₀, exact rfl }
   ... = 4 * (33^3) + 1 : by { rw pow_three, exact rfl }
   ... = 4 * 35937 + 1 : by { rw pow_three, exact rfl }
   ... = 143748 + 1 : by { rw mul_comm, exact rfl }
   ... = 143749 : by { rw add_comm, exact rfl }
   ... = 2 * 71874 + 1 : by { rw mul_comm, exact rfl }
   ... = 143749 : by { rw add_comm, exact rfl }
   ... = 2 * 71874 + 1 : by { rw add_assoc, exact rfl }
   ... = 2 * (71874 + 1) : by { rw add_assoc, exact rfl }
   ... = 2 * 71875 : by { rw add_comm, exact rfl }
   ... = 143750 : by
end
