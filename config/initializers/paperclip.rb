options = {
  storage: :s3,
  bucket: "",
  s3_credentials: {
    access_key_id: ENV["AWS_ACCESS_KEY"],
    secret_access_key: ENV["AWS_SECRET_KEY"]
  },
  #  path: "/:class/:attachment/:id_partition/:style/:filename", #customize way url looks?
  #  url: ":s3_domain_url",
  s3_host_name: 's3-us-west-2.amazonaws.com'
}

options.each do |key, value|
  Paperclip::Attachment.default_options[key] = value
end
