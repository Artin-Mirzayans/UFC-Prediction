User.create!([
  {email: "admin@gmail.com", password_digest: "$2a$12$icF0oZLAhqRYLi5y0ZcuNOgdM0PUbkZ4IHtwCKQH62zJqqBHU0mni", correct_fg: 0, correct_mg: 0, incorrect_fg: 0, incorrect_mg: 0, admin: true},
  {email: "bob@gmail.com", password_digest: "$2a$12$3AUY1OmTmwAvdPS4nb1yAu4zYEV29wfD6Ctl/dp9pfsO7e6WmXDBm", correct_fg: 3, correct_mg: 4, incorrect_fg: 4, incorrect_mg: 3, admin: false},
  {email: "noah@gmail.com", password_digest: "$2a$12$i8Zh/ZDqSZLLtFUZN.LwMuBrxRwBmqj1UsaXfCqZ5KMplb9bmnJwe", correct_fg: 3, correct_mg: 3, incorrect_fg: 5, incorrect_mg: 5, admin: false},
  {email: "nick@gmail.com", password_digest: "$2a$12$WDVgdPf1MyUeErWAa1X.xeodkBNAatfzcqULxM64WU2YrHTHcWWo.", correct_fg: 3, correct_mg: 1, incorrect_fg: 2, incorrect_mg: 4, admin: false},
  {email: "jerry@gmail.com", password_digest: "$2a$12$e8yu8J5/4i8.6dkIPwbSOe3A.pFaiD/ccWgyfUbFXniuyejI4QKja", correct_fg: 6, correct_mg: 1, incorrect_fg: 2, incorrect_mg: 7, admin: false},
  {email: "tom@gmail.com", password_digest: "$2a$12$H/inNcbEe5xpr9aQS7iq7e/Fqd6WKGWeNwEsoNqPb8C74tmfWgZou", correct_fg: 1, correct_mg: 0, incorrect_fg: 3, incorrect_mg: 4, admin: false},
  {email: "charles@gmail.com", password_digest: "$2a$12$SKsU5wJoJSdqoT0BeewN4ePa51Mws.XrGsm/YY1efoIgqQMXbF4Gy", correct_fg: 4, correct_mg: 4, incorrect_fg: 3, incorrect_mg: 3, admin: false}
])

Event.create!([
  {event_name: "UFC 273", f1: "Alexander Volkanovski", f2: "Korean Zombie", f3: "Aljimain Sterling", f4: "Petr Yan", status: "Concluded", date: "Sat, Apr 9"},
  {event_name: "UFC FN: LUQUE x MUHAMMAD", f1: "Vicente Luque", f2: "Belal Muhammad", f3: "Caio Borralho", f4: "Gadzhi Omargadzhiev", status: "Concluded", date: "Sat, Apr 16"},
  {event_name: "UFC FN: LEMOS x ANDRADE", f1: "Amanda Lemos", f2: "Jessica Andrade", f3: "Clay Guida", f4: "Claudio Puelles", status: "Concluded", date: "Sat, Apr 23"},
  {event_name: "UFC FN: FONT x VERA", f1: "Rob Font", f2: "Marlon Vera", f3: "Andrei Arlovski", f4: "Jake Collier", status: "Concluded", date: "Sat, Apr 30"},
  {event_name: "UFC 274", f1: "Charles Oliveira", f2: "Justin Gaethje", f3: "Rose Namajunas", f4: "Carla Esparza", status: "Upcoming", date: "Sat, May 7"},
  {event_name: "UFC FN: BLACHOWICZ x RAKIC", f1: "Jan Blachowicz", f2: "Aleksandar Rakic", f3: "Ryan Spann", f4: "Ion Cutelaba", status: "Upcoming", date: "Sat, May 14"},
  {event_name: "UFC FN: HOLM x VIEIRA", f1: "Holly Holm", f2: "Ketlten Vieira", f3: "Eryk Anders", f4: "Park Jun-yong", status: "Upcoming", date: "Sat, May 21"}
])

Prediction.insert_all([
  {user_id: 2, event_id: 3, fighter_guess: "Jessica Andrade", method_guess: "Decision"},
  {user_id: 2, event_id: 3, fighter_guess: "Claudio Puelles", method_guess: "Submission"},
  {user_id: 2, event_id: 2, fighter_guess: "Vicente Luque", method_guess: "Decision"},
  {user_id: 2, event_id: 2, fighter_guess: "Caio Borralho", method_guess: "TKO/KO"},
  {user_id: 2, event_id: 1, fighter_guess: "Korean Zombie", method_guess: "TKO/KO"},
  {user_id: 2, event_id: 1, fighter_guess: "Petr Yan", method_guess: "Decision"},
  {user_id: 2, event_id: 4, fighter_guess: "Rob Font", method_guess: "Submission"},
  {user_id: 2, event_id: 5, fighter_guess: "Charles Oliveira", method_guess: "Decision"},
  {user_id: 2, event_id: 5, fighter_guess: "Rose Namajunas", method_guess: "Submission"},
  {user_id: 2, event_id: 6, fighter_guess: "Aleksandar Rakic", method_guess: "Decision"},
  {user_id: 2, event_id: 6, fighter_guess: "Ryan Spann", method_guess: "Submission"},
  {user_id: 2, event_id: 7, fighter_guess: "Ketlten Vieira", method_guess: "Decision"},
  {user_id: 2, event_id: 7, fighter_guess: "Eryk Anders", method_guess: "TKO/KO"},
  {user_id: 3, event_id: 1, fighter_guess: "Korean Zombie", method_guess: "Submission"},
  {user_id: 3, event_id: 1, fighter_guess: "Petr Yan", method_guess: "Decision"},
  {user_id: 3, event_id: 2, fighter_guess: "Vicente Luque", method_guess: "TKO/KO"},
  {user_id: 3, event_id: 2, fighter_guess: "Caio Borralho", method_guess: "TKO/KO"},
  {user_id: 3, event_id: 3, fighter_guess: "Amanda Lemos", method_guess: "Submission"},
  {user_id: 3, event_id: 3, fighter_guess: "Clay Guida", method_guess: "TKO/KO"},
  {user_id: 3, event_id: 4, fighter_guess: "Marlon Vera", method_guess: "Decision"},
  {user_id: 3, event_id: 4, fighter_guess: "Andrei Arlovski", method_guess: "Submission"},
  {user_id: 3, event_id: 5, fighter_guess: "Justin Gaethje", method_guess: "Submission"},
  {user_id: 3, event_id: 6, fighter_guess: "Ryan Spann", method_guess: "Submission"},
  {user_id: 3, event_id: 6, fighter_guess: "Aleksandar Rakic", method_guess: "TKO/KO"},
  {user_id: 4, event_id: 1, fighter_guess: "Alexander Volkanovski", method_guess: "TKO/KO"},
  {user_id: 4, event_id: 2, fighter_guess: "Belal Muhammad", method_guess: "TKO/KO"},
  {user_id: 4, event_id: 2, fighter_guess: "Gadzhi Omargadzhiev", method_guess: "Submission"},
  {user_id: 4, event_id: 3, fighter_guess: "Jessica Andrade", method_guess: "Decision"},
  {user_id: 4, event_id: 3, fighter_guess: "Clay Guida", method_guess: "Decision"},
  {user_id: 4, event_id: 5, fighter_guess: "Charles Oliveira", method_guess: "Submission"},
  {user_id: 4, event_id: 5, fighter_guess: "Carla Esparza", method_guess: "Decision"},
  {user_id: 4, event_id: 6, fighter_guess: "Jan Blachowicz", method_guess: "TKO/KO"},
  {user_id: 4, event_id: 6, fighter_guess: "Ryan Spann", method_guess: "Decision"},
  {user_id: 5, event_id: 1, fighter_guess: "Alexander Volkanovski", method_guess: "Decision"},
  {user_id: 5, event_id: 1, fighter_guess: "Aljimain Sterling", method_guess: "Submission"},
  {user_id: 5, event_id: 2, fighter_guess: "Vicente Luque", method_guess: "TKO/KO"},
  {user_id: 5, event_id: 2, fighter_guess: "Caio Borralho", method_guess: "Submission"},
  {user_id: 5, event_id: 3, fighter_guess: "Amanda Lemos", method_guess: "Decision"},
  {user_id: 5, event_id: 3, fighter_guess: "Claudio Puelles", method_guess: "Submission"},
  {user_id: 5, event_id: 4, fighter_guess: "Marlon Vera", method_guess: "Submission"},
  {user_id: 5, event_id: 4, fighter_guess: "Andrei Arlovski", method_guess: "TKO/KO"},
  {user_id: 5, event_id: 5, fighter_guess: "Charles Oliveira", method_guess: "Decision"},
  {user_id: 5, event_id: 6, fighter_guess: "Jan Blachowicz", method_guess: "Submission"},
  {user_id: 5, event_id: 6, fighter_guess: "Ion Cutelaba", method_guess: "TKO/KO"},
  {user_id: 6, event_id: 2, fighter_guess: "Vicente Luque", method_guess: "TKO/KO"},
  {user_id: 6, event_id: 2, fighter_guess: "Gadzhi Omargadzhiev", method_guess: "Submission"},
  {user_id: 6, event_id: 4, fighter_guess: "Rob Font", method_guess: "Submission"},
  {user_id: 6, event_id: 4, fighter_guess: "Andrei Arlovski", method_guess: "TKO/KO"},
  {user_id: 6, event_id: 5, fighter_guess: "Justin Gaethje", method_guess: "TKO/KO"},
  {user_id: 6, event_id: 6, fighter_guess: "Ryan Spann", method_guess: "Submission"},
  {user_id: 7, event_id: 1, fighter_guess: "Korean Zombie", method_guess: "TKO/KO"},
  {user_id: 7, event_id: 1, fighter_guess: "Petr Yan", method_guess: "TKO/KO"},
  {user_id: 7, event_id: 2, fighter_guess: "Vicente Luque", method_guess: "Decision"},
  {user_id: 7, event_id: 3, fighter_guess: "Jessica Andrade", method_guess: "TKO/KO"},
  {user_id: 7, event_id: 3, fighter_guess: "Claudio Puelles", method_guess: "Submission"},
  {user_id: 7, event_id: 4, fighter_guess: "Marlon Vera", method_guess: "Submission"},
  {user_id: 7, event_id: 4, fighter_guess: "Andrei Arlovski", method_guess: "Decision"},
  {user_id: 7, event_id: 5, fighter_guess: "Charles Oliveira", method_guess: "Submission"},
  {user_id: 7, event_id: 5, fighter_guess: "Carla Esparza", method_guess: "Decision"},
  {user_id: 7, event_id: 6, fighter_guess: "Ryan Spann", method_guess: "TKO/KO"}
])

Result.create!([
  {event_id: 1, f1_fighter_actual: "Alexander Volkanovski", f1_method_actual: "TKO/KO", f2_fighter_actual: "Aljimain Sterling", f2_method_actual: "Decision"},
  {event_id: 2, f1_fighter_actual: "Belal Muhammad", f1_method_actual: "Decision", f2_fighter_actual: "Caio Borralho", f2_method_actual: "Decision"},
  {event_id: 3, f1_fighter_actual: "Jessica Andrade", f1_method_actual: "Submission", f2_fighter_actual: "Claudio Puelles", f2_method_actual: "Submission"},
  {event_id: 4, f1_fighter_actual: "Marlon Vera", f1_method_actual: "Decision", f2_fighter_actual: "Andrei Arlovski", f2_method_actual: "Decision"}
])