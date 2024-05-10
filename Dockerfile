FROM oven/bun:1-debian

# Create a non-root user
USER bun

# Set the working directory
WORKDIR /usr/share/bun

# Copy the source code
COPY --chown=bun:bun . .

# Install the dependencies
RUN bun install

# Expose the port
EXPOSE 5173

# Run the application
CMD ["bun", "run", "dev"]