# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ruby encoding: utf-8

Agent.create(other_agent_name: "S. aureus", ref_number: "CCUG 641", reference_id: 1, adminagentname_id: 1, adminagentfamily_id: 1,adminagentgenu_id: 1 , adminagentspec_id: 1)

an1= Adminagentname.create(a_common_name: "Salmonellen") 
af1= Adminagentfamily.create(a_family: "Enterobacteriaceae")
ag1= Adminagentgenu.create(a_genus: "Salmonella")
as1= Adminagentspec.create(a_species: "senftenberg")

m1= Matrix.create(place_of_origin: "Germany", reference_id: 1, adminmatrixname_id: 1, adminmatrixgenu_id: 1 , adminmatrixspec_id: 1)
m2= Matrix.create(place_of_origin: "Holland", reference_id: 1, adminmatrixname_id: 1, adminmatrixgenu_id: 1 , adminmatrixspec_id: 1)
m3= Matrix.create(place_of_origin: "Vietnam", reference_id: 1, adminmatrixname_id: 1, adminmatrixgenu_id: 1 , adminmatrixspec_id: 1)
m4= Matrix.create(place_of_origin: "Frankreich", reference_id: 2, adminmatrixname_id: 1, adminmatrixgenu_id: 1 , adminmatrixspec_id: 1)
m5= Matrix.create(place_of_origin: "Thailand", reference_id: 3, adminmatrixname_id: 1, adminmatrixgenu_id: 1 , adminmatrixspec_id: 1)
m6= Matrix.create(place_of_origin: "Germany", reference_id: 3, adminmatrixname_id: 1, adminmatrixgenu_id: 1 , adminmatrixspec_id: 1)
m7= Matrix.create(place_of_origin: "Germany", reference_id: 4, adminmatrixname_id: 1, adminmatrixgenu_id: 1 , adminmatrixspec_id: 1)

Adminmatrixname.create(m_common_name: "Zwiebel")
Adminmatrixgenu.create(m_genus: "Allium")
Adminmatrixspec.create(m_species: "cepa")

t1= Tenacity.create(total_sample_number: "11", inoculum_concentration_initial: "2000000", i_concentration_unit: "CfU/Gramm", reference_id: 1)

tp1= Tenacityparam.create(tena_duration: "2", tena_duration_unit: "days", tenacity_id: 1)

Spiking.create(spik_short_name: "indirectly with sand", reference_id: 1)
Samplepreparation.create(samprep_short_name: "Plating", reference_id: 1)
Detection.create(d_short_name: "BPA", reference_id: 1)
Treatment.create(t_comment: "as usual", reference_id: 1)

r1= Reference.create(first_author_name: "Mai", year: "2016", title: "Tenacity study")
r2= Reference.create(first_author_name: "Anne", year: "2016", title: "Tenacity study")
r3= Reference.create(first_author_name: "Chris", year: "2016", title: "Tenacity study")
r4= Reference.create(first_author_name: "Ken", year: "2016", title: "Tenacity study")

Result.create(r_comment: "as usually", cfu_initial: "1000000", cfu_initial_unit: "CfU/Gramm", cfu_detected: "5000", cfu_detected_unit: "CfU/Gramm")


Contaminationstatus.create(cfu_natural_contamination: 100000, cfu_natural_contamination_unit: "CfU/Gramm", matrix_id: 1, agent_id: 1, tenacity_id: 1, treatment_id: 1, spiking_id: 1, samplepreparation_id: 1, detection_id: 1, reference_id: 1, result_id: 1)

