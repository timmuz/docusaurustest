# Use the awesometic/docusaurus image
FROM awesometic/docusaurus:latest

# The working directory for the app
WORKDIR /docusaurus

# Copy the app files to the container
COPY . .

# Expose the port Docusaurus runs on
EXPOSE 80

# The command that runs the Docusaurus app
CMD ["npx", "docusaurus", "start", "--host", "127.0.0.1"]
