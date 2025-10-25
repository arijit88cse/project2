# 1. Use the specified base image
FROM devopsedu/webapp

# 2. Set the working directory (optional, but good practice)
# WORKDIR /var/www/html

# 3. Remove the default index file (optional, to prevent conflicts)
# The default image often contains a static index.html or similar placeholder.
RUN rm -f /var/www/html/index.html

# 4. Copy your PHP website files into the web root directory of the container
# The first path is relative to the build context (your local directory).
# The second path is the destination inside the container.
COPY website-files/ /var/www/html/

# 5. Define the command to run the web server in the foreground
# This command is often required for Apache-based images.
CMD ["apachectl", "-D", "FOREGROUND"]
