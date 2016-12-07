# docker-nexus3-ssl

### Usage
```bash
docker run -p 8081:8081 -p 8443:8443 \
  -v nexus_data:/nexus_data \
  -e HOST=repo.example.com \
  desiato/nexus3-ssl
```
