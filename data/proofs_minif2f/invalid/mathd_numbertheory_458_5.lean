import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_458
  (n : ℕ)
  (h₀ : n % 8 = 7) :
  n % 4 = 3 :=
begin

  cases n,
  { rw [h₀, nat.mod_zero, nat.mod_zero] at h₀,
    exact absurd h₀ rfl },
  { cases n,
    { rw [h₀, nat.mod_two, nat.mod_two] at h₀,
      exact absurd h₀ rfl },
    { rw [h₀, nat.mod_two, nat.mod_two] at h₀,
      exact absurd h₀ rfl } },
  { cases n,
    { rw [h₀, nat.mod_two, nat.mod_two] at h₀,
      exact absurd h₀ rfl },
    { rw [h₀, nat.mod_two, nat.mod_two] at h₀,
      exact absurd h₀ rfl } },
  { rw [h₀, nat.mod_two, nat.mod_two] at h₀,
    exact absurd h₀ rfl }

end
