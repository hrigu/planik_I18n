require "rubygems"
require "google_drive"

# Logs in.
# You can also use OAuth. See document of
# GoogleDrive.login_with_oauth for details.
session = GoogleDrive.login("planikwebapp@gmail.com", "password")

# Gets list of remote files.
# for file in session.files
#   p file.title
#   p file.resource_id
# end

coll = session.collection_by_url("https://drive.google.com/?tab=wo&authuser=0#folders/0Bw8J44VPJL2HU1JPYnAydXFUb00")
for file in coll.files
   p file.title
   p file.resource_id
end

# Uploads a local file.
# path = File.expand_path("../document.csv", __FILE__)
# session.upload_from_file(path, "google-drive-ruby-document.csv", :content_type => "text/csv")

# Downloads to a local file.
# file = session.file_by_title("google-drive-ruby-document.csv")

# pp file
# path = File.expand_path("../dddocument.csv", __FILE__)
# file.export_as_file(path)

# Updates content of the remote file.
#file.update_from_file("/path/to/hello.txt")