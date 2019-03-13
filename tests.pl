/*
	This database contains a list of known tests for each infectious disease.
	The format is test(disease_name, test_name).
	
	The user will respond to the tests with either 'Positive' or 'Negative'. Once test
	results have been entered, the user will be presented with a list of possible diseases they have
	contracted and the treatments associated with them.
*/

test(aids, elisa).
test(aids, cd4). 
test(aids, viral_load). 

test(anthrax, gram_positive).
test(anthrax, immunofluorescence_microscopy).

test(argentine_hemorrhagic_fever, laboratory_blood_work).

test(astrovirus, electron_microscopy).
test(astrovirus, immunofluorescence).

test(babesiosis, maltese_cross_formations).
test(babesiosis, serologic_testing).
test(babesiosis, polymerase_chain_reaction).

test(balantidiasis, sigmoidoscopy_procedure).

test(blastocytosis, ova_parasite_exam).
test(blastocytosis, polymerase_chain_reaction).

test(botulism, brain_scan).
test(botulism, spinal_fluid).
test(botulism, ncs).
test(botulism, emg).

test(brucellosis, agglutination_test).
test(brucellosis, dipstick_assay).

test(bubonic_plague, yersinia_pestis).

test(campylobacteriosis, gram_stain).
test(campylobacteriosis, stool_culture).

test(chickenpox, varicella_test).
test(chickenpox, elisa_test).

test(chikungunya, blood_rna).
test(chikungunya, blood_antibodies).

test(chlamydia, swab_nose).
test(chlamydia, swab_throat).

test(cholera, vibrio_cholerae_o1).

test(chromoblastomycosis, add_potassium_hydroxide_to_lesion_sample).

test(coccidioidomycosis, silver_staining).
test(coccidioidomycosis, culture).
test(coccidioidomycosis, molecular_probe).

test(corynebacterium_diphtheriae, gram_positive).

test(cryptosporidiosis, microscopy).
test(cryptosporidiosis, staining).
test(cryptosporidiosis, blood_test).

test(csd, warthin_starry_stain).
test(csd, polymerase_chain_reaction).

test(ctf, immunofluorescence).
test(ctf, liver_enzyme_levels).

test(dengue, viral_antigen_detection).
test(dengue, pcr).

test(diptheria, throat_swab).
test(diptheria, nose_swab).

test(ebola, ptt).

test(ebv, blood_test).

test(ehrlichiosis, blood_test).
test(ehrlichiosis, liver_test).

test(filariasis, finger_prick_test).
test(filariasis, blood_film_smears).

test(gerstmann_straussler_scheinkersyndrome, lineage).
test(gerstmann_straussler_scheinkersyndrome, dna_examination).

test(giardiasis, stool_culture).
test(giardiasis, stool_stain).
test(giardiasis, entero_test).

test(hand_foot_and_mouth_disease, culture).

test(heartland_virus, antibody_titer).

test(hepatitis_a, blood_test).

test(hpv, mouth_test).

test(influenza, rapid_molecular_assay).

test(isosporiasis, stool).
test(isosporiasis, biopsy).
test(isosporiasis, string_epifluorescence).

test(kawasaki, blood).
test(kawasaki, electrocardiogram).
test(kawasaki, ultrasound).

test(lassa_fever, cell_culture).

test(listeriosis, blood_test).
test(listeriosis, cerebrospinal_fluid).

test(leprosy, mycobacterium_leprae).

test(legionnaires_disease, urinary_antigen_test).
test(legionnaires_disease, sputum_culture).

test(lyme, tick_exposure).
%there is a 2_step blood test. if eia is negative, second step unnecessary
test(lyme, eia).
test(lyme, western_blot).

test(leptospirosis, mat).
test(leptospirosis, sold_phase_assay).

test(malaria, low_number_platelets).
test(malaria, high_bilirubin).
test(malaria, blood_films).
test(malaria, rapid_diagnostic_test).

test(measles, rubeola_antibody_blood_test).
test(measles, measles_immunity_test).
test(measles, physical_examination).

test(meningitis, bloodcultures).
test(meningitis, computerizedtomography).
test(meningitis, lumbarpuncture).

test(monkeypox, blood).

test(meningococcal_disease, gram_negative).
test(meningococcal_disease, glass_test).

test(mumps, elisa).
test(mumps, ifa).
test(mumps, igm).

test(mycoplasma_pneumonia, culture_test).
test(mycoplasma_pneumonia, serology).

test(pertussis, nasopharyngeal).

test(pneumonia, chest_x_ray).
test(pneumonia, chest_x_ray).

test(powassan, cerebrospinal_fluid).

test(psittacosis, cft).

test(q_fever, blood_test).

test(rabies, fluorescent_antibody).
test(rabies, light_microscopy).

test(rheumatic_fever, ekg).
test(rheumatic_fever, echocardiography).

test(rhinovirus, none).

test(rocky_mountain_spotted_fever, blood_test).
test(rocky_mountain_spotted_fever, skin_biopsy).
test(rocky_mountain_spotted_fever, serology).

test(rotavirus, enzyme_immunoassay).

test(rubella, bloodtest).

test(salmonellosis, salmonella).

test(sars, pcr).
test(sars, antibody_test).

test(shigellosis, shigella).

test(shingles, igm_antibody_present).

test(shingles, pcr).

test(sleeping_sickness, microscopy).

test(small_pox, examination).

test(syphilis, blood_test).
test(syphilis, direct_visual_inspection).

test(tetanus, spatula_test).

test(toxic_shock_syndrome, serology_test).
test(toxic_shock_syndrome, blood_culture).

test(trichinellosis, biopsy).
test(trichinellosis, blood_test).

test(tuberculosis, tbskintest).
test(tuberculosis, tbbloodtest).

test(tularemia, lymph_node_biops).

test(typhoid, blood).

test(typhus_fever, skin_biopsy).
test(typhus_fever, western_blot).
test(typhus_fever, immunofluorescence).
test(typhus_fever, blood_test).

test(vibriosis, vibrio).

test(west_nile_virus, mri).
test(west_nile_virus, blood_test).
test(west_nile_virus, lumbar_puncture).

test(yellow_fever, labs).
test(yellow_fever, travel).

test(zika, mac_elisa).
test(zika, trioplext_rt_pcr).