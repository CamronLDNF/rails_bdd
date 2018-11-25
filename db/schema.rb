ActiveRecord::Schema.define(version: 2018_11_25_144804) do

  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  add_foreign_key "comments", "articles"
end
