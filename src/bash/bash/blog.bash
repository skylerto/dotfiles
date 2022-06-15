new_post() {
  local title="${*}"
  local file_title="${title// /-}"
  file_title=$(echo "${file_title}" | awk '{print tolower($0)}')
  cd "${HOME}/dev/skylerto/skylerto.github.io" || return
  file_date_format="+%Y-%m-%d"
  file_date_string=$(date "${date_format}")
  local post_file="_posts/${file_date_string}-${file_title}.markdown"
  post_date_format="+%Y/%m/%d"
  post_date_string=$(date "${date_format}")
  git checkout -b "${file_title}"
  cat << EOF > "${post_file}"
---
layout: post
title: ${title}
date: ${post_date_string}
categories: TODO
---

EOF

vi "${post_file}"
}
