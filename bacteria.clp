(defrule Ask
    =>
    (printout t crlf "do you want to check the disease? (yes/no)" crlf)
    (bind ?answer (read))
        (if (eq ?answer yes)
            then (printout t crlf "mention the symptoms" crlf)
        )
        (if (eq ?answer no)
            then (printout t crlf "thankyou" crlf)
        )
)

(defrule tetanus
    (infection_is tetanus)
    =>
    (printout t "The disease is tetanus which is infected by the bacterium Clostridium tetani" crlf)
)

(defrule is_it_tetanus
    (symptom stiff_jaw_muscles)
    (symptom stiff_face_and_neck_muscles)
    (symptom difficulty_Swallowing)
    (symptom stomach_that_feels_hard_to_the_touch)
    (symtom fever)
    =>
    (assert (infection_is tetanus))
)

(defrule typhus
    (infection_is typhus)
    =>
    (printout t "The disease is Typhus which is infected by the bacteria Salmonella typhi" crlf)    
)

(defrule is_it_typhus
    (symptom headache)
    (symptom weakness_and_fatigue)
    (symptom muscle_ache)
    (symptom sweating)
    (symptom dry_cough)
    (symptom stomach_pain)
    =>
    (assert (infection_is typhus))
)

(defrule meningitis
    (infection_is meningitis)
    =>
    (printout t "the disease is meningitis infected by the bacteria Streptococcus pneumoniae, Neisseria meningitidis, Haemophilus influenzae, or Listeria monocytogenes" crlf)
)

(defrule is_it_meningitis
    (symptom fever)
    (symptom headache)
    (symptom seizures)
    =>
    (assert (infection_is meningitis))
)

(defrule Leptospirosis
    (infection_is Leptospirosis)
    =>
    (printout t "The disease is leptospirosis which is infected by Leptospira bacteria" crlf)
)

(defrule is_it_Leptospirosis
    (symptom high_fever)
    (symptom headache)
    (symptom muscle_ache)
    (symptom abdominal_pain)
    (symptom jaundice)
    =>
    (assert (infection_is Leptospirosis))
)

(defrule Brucellosis
    (infection_is Brucellosis)
    =>
    (printout t "The disease is brucellosis which is infected by the bacteria Brucella" crlf)
)

(defrule is_it_Brucellosis
    (symptom high_fever)
    (symptom loss_of_appetite)
    (symptom headache)
    (symptom sweating)
    =>
    (assert (infection_is Brucellosis))
)

(defrule Anthrax
    (infection_is Anthrax)
    =>
    (printout t "The disease is anthrax which is infected by the bacterium Bacillus anthracis" crlf)
)

(defrule is_it_Anthrax
    (symptom fever)
    (symptom headache)
    (symptom sore_throat)
    (symptom diarrhea)
    =>
    (assert (infection_is Anthrax))
)

(defrule Tuberculosis
    (infection_is Tuberculosis)
    =>
    (printout t "The disease is turbeculosis which is infected by the bacterium Mycobacterium tuberculosis" crlf)
)

(defrule is_it_Tuberculosis
    (symptom weight_lost)
    (symptom high_fever)
    (symptom loss_of_appetite)
    =>
    (assert (infection_is Tuberculosis))
)

(defrule Diphtheria
    (infection_is Diphtheria)
    =>
    (printout t "The disease is diphtheria which is infected by Corynebacterium bacteria" crlf)
)

(defrule is_it_Diphtheria
    (symptom fever)
    (symptom tiredness)
    (symptom sore_throat)
    =>
    (assert (infection_is Diphtheria))
)
