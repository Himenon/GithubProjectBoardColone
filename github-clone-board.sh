# !/bin/bash

ACCESS_TOKEN=

echo "[ ] Requesting"
curl -H "Authorization: bearer ${ACCESS_TOKEN}" -X POST -d " \
{\
    \"query\" {\
        organization(login:'leveragesmedia') {\
        members(first: 100) {\
          edges {\
            node {\
              name\
              avatarUrl\
            }\
          }\
        }\
      }\
    }\
}\
" https://api.github.com/graphql