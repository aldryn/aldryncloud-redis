FROM redis:3.0-alpine

RUN echo '#!/bin/bash\necho "requirepass ${PASSWORD}\ndir /data" | redis-server -' > /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
