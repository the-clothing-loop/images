# Images Host

> Selfhostable alternative to cloudinary

- CaddyServer
- ImageProxy (willnorris)
- FileBrowser

## Configuration

Docker compose environment variables:

| Name | Usage | Example |
|---|---|---|
| IMAGE_USERNAME | filebrowser username | `admin` |
| IMAGE_PASSWORD | filebrowser password | `pass` |
| IMAGE_HOST | host used in imageproxy | `images.example.com` |

Add these to a .env or to your coolify environment variables
