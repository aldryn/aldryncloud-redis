FROM redis:2.8

RUN echo '#!/bin/bash\necho "requirepass ${PASSWORD}\ndir /data" | redis-server -' > /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
