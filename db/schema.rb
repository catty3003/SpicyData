# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140710214358) do

  create_table "adminagentfamilies", force: true do |t|
    t.string   "a_family"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminagentgenus", force: true do |t|
    t.string   "a_genus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminagentnames", force: true do |t|
    t.string   "a_common_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminagentspecs", force: true do |t|
    t.string   "a_species"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admindetectiontypes", force: true do |t|
    t.string   "detection_method_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminmatrixgenus", force: true do |t|
    t.string   "m_genus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminmatrixnames", force: true do |t|
    t.string   "m_common_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminmatrixplantparts", force: true do |t|
    t.string   "plant_part"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminmatrixproductforms", force: true do |t|
    t.string   "product_form"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminmatrixspecs", force: true do |t|
    t.string   "m_species"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminmatrixstorageforms", force: true do |t|
    t.string   "storage_form"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminreferencetypes", force: true do |t|
    t.string   "type_of_literatur"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admintreatmentfumigations", force: true do |t|
    t.string   "fumigation_gas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admintreatmentmechanicals", force: true do |t|
    t.string   "mechanical"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admintreatmentopticals", force: true do |t|
    t.string   "optical"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admintreatmentprocesstypes", force: true do |t|
    t.string   "process_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admintreatmentsteams", force: true do |t|
    t.string   "steam"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admintreatmenttemperatures", force: true do |t|
    t.string   "temperature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agentparams", force: true do |t|
    t.decimal  "infectious_dose"
    t.decimal  "level_of_infectious_dose"
    t.string   "infected_species"
    t.integer  "agent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agents", force: true do |t|
    t.integer  "adminagentname_id"
    t.integer  "adminagentfamily_id"
    t.integer  "adminagentgenu_id"
    t.integer  "adminagentspec_id"
    t.string   "subspecies"
    t.string   "serovar"
    t.string   "other_agent_name"
    t.string   "ref_number"
    t.decimal  "rate_of_illness"
    t.decimal  "morbidity"
    t.decimal  "mortality"
    t.string   "isolation_source"
    t.string   "natural_occurence"
    t.text     "a_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agents_references", id: false, force: true do |t|
    t.integer  "agent_id"
    t.integer  "reference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contaminationstatuses", force: true do |t|
    t.decimal  "cfu_natural_contamination"
    t.string   "cfu_natural_contamination_unit"
    t.integer  "matrix_id"
    t.integer  "agent_id"
    t.integer  "tenacity_id"
    t.integer  "treatment_id"
    t.integer  "spiking_id"
    t.integer  "samplepreparation_id"
    t.integer  "detection_id"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.integer  "result_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "culdetecs", force: true do |t|
    t.string   "medium"
    t.string   "agar"
    t.decimal  "incubation_duration"
    t.string   "incubation_duration_unit"
    t.string   "incubation_temp"
    t.integer  "sample_volume_per_disc"
    t.string   "medium_volume_per_disc"
    t.integer  "detection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detections", force: true do |t|
    t.string   "d_short_name"
    t.text     "d_long_name"
    t.string   "d_method_validated_for_condiments"
    t.text     "d_process_description"
    t.decimal  "d_weight_of_sample"
    t.string   "d_weight_of_sample_unit"
    t.string   "detection_method_dilution"
    t.integer  "admindetectiontype_id"
    t.decimal  "duration_until_result"
    t.string   "duration_until_result_unit"
    t.string   "target_gen"
    t.string   "target_protein"
    t.text     "other_characteristic"
    t.string   "technique"
    t.text     "verification"
    t.text     "interpretation"
    t.string   "d_device_needed"
    t.text     "method_for_comparison"
    t.string   "lod"
    t.string   "sensitivity"
    t.string   "specifity"
    t.string   "reliability_score"
    t.text     "d_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matrices", force: true do |t|
    t.integer  "adminmatrixname_id"
    t.integer  "adminmatrixgenu_id"
    t.integer  "adminmatrixspec_id"
    t.string   "other_matrix_name"
    t.integer  "adminmatrixplantpart_id"
    t.integer  "adminmatrixstorageform_id"
    t.integer  "adminmatrixproductform_id"
    t.string   "place_of_origin"
    t.date     "date_of_harvest"
    t.decimal  "relative_humidity_during_harvest"
    t.decimal  "temperature_during_harvest"
    t.string   "pre_treatment"
    t.date     "sampling_date"
    t.decimal  "m_ph"
    t.decimal  "m_aw"
    t.decimal  "humidity_of_matrix"
    t.decimal  "ash"
    t.decimal  "sand"
    t.decimal  "lipids"
    t.string   "further_ingredients"
    t.text     "m_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references", force: true do |t|
    t.integer  "adminreferencetype_id"
    t.string   "first_author_name"
    t.integer  "year"
    t.string   "title"
    t.string   "journal"
    t.integer  "volume"
    t.integer  "page_from"
    t.integer  "page_to"
    t.string   "link"
    t.boolean  "matrix"
    t.boolean  "agent"
    t.boolean  "spiking"
    t.boolean  "treatment"
    t.boolean  "sample_prep"
    t.boolean  "detection"
    t.boolean  "tenacity"
    t.text     "r_comment"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.decimal  "cfu_initial"
    t.string   "cfu_initial_unit"
    t.boolean  "detectability"
    t.decimal  "cfu_detected"
    t.string   "cfu_detected_unit"
    t.text     "r_comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "samplepreparations", force: true do |t|
    t.string   "samprep_short_name"
    t.text     "samprep_long_name"
    t.string   "samprep_method_validated_for_condiments"
    t.text     "samprep_process_description"
    t.decimal  "spik_weight_of_sample"
    t.string   "spik_weight_of_sample_unit"
    t.string   "dilution_fuid"
    t.string   "first_dilution_ratio"
    t.string   "homogenize_with"
    t.string   "enrichment"
    t.string   "dna_extraction"
    t.string   "rna_extraction"
    t.string   "protein_extraction"
    t.string   "homogenizing_method"
    t.string   "cell_lysis"
    t.string   "applied_kit"
    t.string   "other_samprep_method_type"
    t.string   "samprep_method_type_details_text"
    t.decimal  "samprep_duration"
    t.string   "samprep_duration_unit"
    t.text     "samprep_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spikingparams", force: true do |t|
    t.decimal  "spik_weight_of_sample"
    t.string   "spik_weight_of_sample_unit"
    t.decimal  "cfu_of_inoculum_per_ml"
    t.decimal  "cfu_per_gram_spice_spiked"
    t.string   "carrier_substance"
    t.string   "carrier_fluid"
    t.decimal  "spik_duration"
    t.string   "spik_duration_unit"
    t.text     "spik_comment"
    t.integer  "spiking_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spikings", force: true do |t|
    t.string   "spik_short_name"
    t.text     "spik_long_name"
    t.text     "spik_process_description"
    t.string   "spik_device_needed"
    t.text     "pros"
    t.text     "cons"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenacities", force: true do |t|
    t.integer  "total_sample_number"
    t.decimal  "inoculum_concentration_initial"
    t.string   "i_concentration_unit"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenacityparams", force: true do |t|
    t.float    "tena_duration"
    t.string   "tena_duration_unit"
    t.integer  "final_concentration"
    t.string   "f_concentration_unit"
    t.float    "decimal_reduction"
    t.text     "tena_comment"
    t.integer  "tenacity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treatments", force: true do |t|
    t.integer  "admintreatmenttemperature_id"
    t.decimal  "temperature_in_degree"
    t.integer  "admintreatmentsteam_id"
    t.decimal  "steam_in_percent"
    t.integer  "admintreatmentfumigation_id"
    t.decimal  "fumigation_gas_in_percent"
    t.integer  "admintreatmentoptical_id"
    t.integer  "admintreatmentmechanical_id"
    t.integer  "admintreatmentprocesstype_id"
    t.decimal  "t_ph"
    t.decimal  "pressure"
    t.decimal  "kgy_dose"
    t.decimal  "t_aw"
    t.decimal  "water_activity"
    t.string   "other_condition"
    t.decimal  "treat_duration"
    t.string   "treat_duration_unit"
    t.text     "t_comment"
    t.integer  "reference_id"
    t.integer  "user_id"
    t.integer  "matrix_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
