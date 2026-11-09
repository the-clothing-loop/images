# Recovery image service

This branch starts from `13b4a1d52b4f07e67aa56044c56897870aa27ab4` on `main`.
The production Coolify resource references a `production` branch that no longer
exists in the public repository. No production deployment commit was available.
The proxy image is pinned to the registry digest observed on production.

Create a separate public-repository Compose application in recovery Coolify.
Select this branch, pin its commit, and use `/docker-compose.recovery.yml`.
Turn automatic deployments off. Enable `connect_to_docker_network` so the
recovery website can reach `recovery-image-source` on the shared network.
Leave public domains empty.

Restore uploaded files to `tcl-recovery-images` before deploying. Caddy mounts
that volume read-only. The image proxy fetches originals from Caddy over the
internal network and allows only that source hostname. Port 8093 binds only to
localhost. Forward it over SSH for direct inspection.

This deployment restores original-image reads and transformations. It doesn't
deploy File Browser or restore its administration state. The application API
retains its own image-volume mount. Image uploads remain outside the current
verification scope.
