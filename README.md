# How to SL - Multilingual Static Site

This is a multilingual static website built with Hugo that provides information about opening and managing an SL (Sociedad Limitada) in Spain.

## Prerequisites

- Docker
- Git

## Local Development

1. Clone the repository:
```bash
git clone <repository-url>
cd howtosl
```

2. Install Hugo theme:
```bash
git submodule add https://github.com/nanxiaobei/hugo-paper themes/paper
```

3. Run Hugo development server:
```bash
hugo server -D
```

The site will be available at `http://localhost:1313`

## Docker Deployment

1. Build the Docker image:
```bash
docker build -t howtosl .
```

2. Run the container:
```bash
docker run -d -p 80:80 howtosl
```

The site will be available at `http://localhost`

## Project Structure

```
project/
├── archetypes/          # Templates for new pages
├── assets/              # Resources (CSS, JS, images)
├── config.toml          # Configuration file
├── content/             # Content for different languages
│   ├── en/             # English content
│   └── ru/             # Russian content
├── layouts/             # Templates
├── static/             # Static files
└── themes/             # Site theme
```

## Content Management

To add or edit content:

1. Navigate to the appropriate language folder in `content/`
2. Edit or create new `.md` files
3. Run `hugo` to rebuild the site

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

