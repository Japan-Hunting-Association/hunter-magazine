FROM node:20-slim

# 必要なツールをインストール
RUN apt-get update && apt-get install -y \
  git \
  curl \
  gnupg \
  ca-certificates \
  build-essential \
  bash \
  jq \
  && rm -rf /var/lib/apt/lists/*

# GitHub CLI をインストール
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
  && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
  && apt-get update \
  && apt-get install gh -y \
  && rm -rf /var/lib/apt/lists/*

# claude CLI をグローバルインストール
RUN npm install -g @anthropic-ai/claude-code

# 作業ディレクトリ
WORKDIR /app

# その他のファイルをコピー
COPY . /app

# 起動時は bash を開く（調整可）
CMD ["bash"]