get '/' do
  @books = BookLoan.all
  erb :welcome
end

post '/book_loan' do
  borrower_name = params[:borrower_name]
  email_address = params[:email_address]
  book_name = params[:book_name]
  
  book_loan = BookLoan.create(:borrower_name=>borrower_name, :email_address=>email_address, :book_name=>book_name)
  
  redirect '/'
end