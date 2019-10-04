json.extract! bank_detail, :id, :bank_name, :account_number, :branch, :ifsc_code, :created_at, :updated_at
json.url bank_detail_url(bank_detail, format: :json)
