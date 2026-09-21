# SecureSearch

A self-hosted private metasearch instance —

Built on the official `searxng/searxng` image. All search functionality is
SearXNG's work; this repo only adds branding, a theme, and Docker config.

## Run
    cp searxng/settings.yml.example searxng/settings.yml
    # set your own secret_key in searxng/settings.yml
    docker compose up -d --build


