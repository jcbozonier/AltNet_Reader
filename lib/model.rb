class BookLoan
  include DataMapper::Resource
  property :id, Serial
  property :borrower_name, String
  property :email_address, String
  property :book_name, String
end

DataMapper.finalize
DataMapper.auto_migrate!