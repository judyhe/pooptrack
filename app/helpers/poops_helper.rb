module PoopsHelper

  def couchdb_rev_field(form, record)
    unless record.new_record?
      form.hidden_record("_rev")
    end
  end
end
