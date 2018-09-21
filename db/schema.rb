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

ActiveRecord::Schema.define(version: 2018_09_21_082958) do

  create_table "alternative_titles", force: :cascade do |t|
    t.integer "title_id"
    t.string "alternative_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title_id"], name: "index_alternative_titles_on_title_id"
  end

  create_table "cadal_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contributors", force: :cascade do |t|
    t.integer "literature_id"
    t.string "contributor"
    t.integer "role_id"
    t.string "institution"
    t.string "discipline"
    t.string "authorid"
    t.text "intr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_contributors_on_literature_id"
    t.index ["role_id"], name: "index_contributors_on_role_id"
  end

  create_table "coverage_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coverages", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "coverage_type_id"
    t.string "coverage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coverage_type_id"], name: "index_coverages_on_coverage_type_id"
    t.index ["literature_id"], name: "index_coverages_on_literature_id"
  end

  create_table "creators", force: :cascade do |t|
    t.integer "literature_id"
    t.string "creator"
    t.integer "role_id"
    t.string "institution"
    t.string "discipline"
    t.string "authorid"
    t.text "intr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_creators_on_literature_id"
    t.index ["role_id"], name: "index_creators_on_role_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "date_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "ref"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "date_xses", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "ref"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "degrees", force: :cascade do |t|
    t.integer "literature_id"
    t.string "grantor"
    t.string "displine"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_degrees_on_literature_id"
  end

  create_table "description_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "descriptions", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "description_type_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["description_type_id"], name: "index_descriptions_on_description_type_id"
    t.index ["literature_id"], name: "index_descriptions_on_literature_id"
  end

  create_table "edition_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "editions", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "edition_type_id"
    t.string "edition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edition_type_id"], name: "index_editions_on_edition_type_id"
    t.index ["literature_id"], name: "index_editions_on_literature_id"
  end

  create_table "format_extents", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "format_mimes", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formats", force: :cascade do |t|
    t.integer "format_mime_id"
    t.integer "format_extent_size"
    t.integer "format_extent_id"
    t.integer "scan_resolution"
    t.integer "literature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["format_extent_id"], name: "index_formats_on_format_extent_id"
    t.index ["format_mime_id"], name: "index_formats_on_format_mime_id"
    t.index ["literature_id"], name: "index_formats_on_literature_id"
  end

  create_table "guides", force: :cascade do |t|
    t.integer "literature_id"
    t.string "cover"
    t.string "title"
    t.string "colophon"
    t.string "copyright"
    t.string "abstract"
    t.string "toc"
    t.string "foreword"
    t.string "preface"
    t.string "content"
    t.string "index"
    t.string "loi"
    t.string "reference"
    t.string "backcover"
    t.integer "total_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_guides_on_literature_id"
  end

  create_table "identifier_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identifiers", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "identifier_type_id"
    t.string "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifier_type_id"], name: "index_identifiers_on_identifier_type_id"
    t.index ["literature_id"], name: "index_identifiers_on_literature_id"
  end

  create_table "language_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "language_type_id"
    t.string "language"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_type_id"], name: "index_languages_on_language_type_id"
    t.index ["literature_id"], name: "index_languages_on_literature_id"
  end

  create_table "literatures", force: :cascade do |t|
    t.string "mlid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marc_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marcs", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "marc_type_id"
    t.string "marc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_marcs_on_literature_id"
    t.index ["marc_type_id"], name: "index_marcs_on_marc_type_id"
  end

  create_table "prices", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "currency_id"
    t.integer "number"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_prices_on_currency_id"
    t.index ["literature_id"], name: "index_prices_on_literature_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.integer "literature_id"
    t.string "name"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_publishers_on_literature_id"
  end

  create_table "relation_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relations", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "relation_type_id"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_relations_on_literature_id"
    t.index ["relation_type_id"], name: "index_relations_on_relation_type_id"
  end

  create_table "right_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rights", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "right_type_id"
    t.string "right"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_rights_on_literature_id"
    t.index ["right_type_id"], name: "index_rights_on_right_type_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sources", force: :cascade do |t|
    t.integer "literature_id"
    t.text "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_sources_on_literature_id"
  end

  create_table "subject_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "subject_type_id"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_subjects_on_literature_id"
    t.index ["subject_type_id"], name: "index_subjects_on_subject_type_id"
  end

  create_table "tempus", force: :cascade do |t|
    t.integer "literature_id"
    t.integer "date_type_id"
    t.integer "date_xsis_id"
    t.string "date"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date_type_id"], name: "index_tempus_on_date_type_id"
    t.index ["date_xsis_id"], name: "index_tempus_on_date_xsis_id"
    t.index ["literature_id"], name: "index_tempus_on_literature_id"
  end

  create_table "titles", force: :cascade do |t|
    t.integer "literature_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_titles_on_literature_id"
  end

  create_table "tocs", force: :cascade do |t|
    t.integer "literature_id"
    t.string "chapter"
    t.string "title"
    t.string "page"
    t.integer "fiel_number"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["literature_id"], name: "index_tocs_on_literature_id"
  end

  create_table "types", force: :cascade do |t|
    t.integer "cadal_type_id"
    t.integer "literature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cadal_type_id"], name: "index_types_on_cadal_type_id"
    t.index ["literature_id"], name: "index_types_on_literature_id"
  end

end
