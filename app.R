library(psychTestR)
timeline <- psychTestR::join(
                        one_button_page("We need to quickly grab some demographic information from you."),
                        text_input_page("id", "If you used an ID, please tell us what it was."),
                        text_input_page("when", "When did you complete the test? Please be as specific as possible."),
                            get_basic_demographics(intro = basic_demographics_default_intro(),
                                                   gender = TRUE, age = TRUE, occupation = TRUE, education = TRUE),
                        text_input_page("email", "Please write your email if you would like to receive your results."),
                        NAFC_page("GMS.q2",
                        "I engaged in regular, daily practice of a musical instrument (including voice) for the following number of years:",
                        c("0", "1", "2", "3", "4-5", "6-9", "10 or more"), arrange_vertically = FALSE),
                        NAFC_page("GMS.q12",
                        "At the peak of my interest, I practised my primary instrument for the following number of hours per day",
                        c("0", "0.5", "1", "1.5", "2", "3-5", "5 or more"), arrange_vertically = FALSE),
                        NAFC_page("GMS.q18",
                        "I have had formal training in music theory for the following number of years",
                        c("0", "0.5", "1", "2", "3", "4-6", "7 or more"), arrange_vertically = FALSE),
                        NAFC_page("GMS.q21",
                        "I have had formal training on a musical instrument (including voice) during my lifetime, for the following number of years",
                        c("0", "1", "2", "3", "4-5", "6-9", "10 or more"), arrange_vertically = FALSE),
                        NAFC_page("GMS.q22",
                        "I can play the following number of musical instruments",
                        c("0", "1", "2", "3", "4", "5", "6 or more"), arrange_vertically = FALSE),
                        elt_save_results_to_disk(complete = TRUE),
                        final_page("Thank you!"))

test <- make_test(
  elts = timeline,
  opt = test_options("Melody Singing", "ilikecheesepie432")
)
