class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.179"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.179/code-aarch64-apple-darwin.tar.gz"
      sha256 "3b765f46eda949d6047f069d9fe2560efa1285bb2994275bee45493a174f3492"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.179/code-x86_64-apple-darwin.tar.gz"
      sha256 "0c130ea4894481ad69903579cd820cbf8cfacfc28141d5fb0051096d6fa0c08e"
    end
  end

  def install
    bin.install Dir["code-*"].first => "code"
    # Provide a compatibility shim
    (bin/"coder").write <<~EOS
      #!/bin/bash
      exec "#{bin}/code" "$@"
    EOS
  end

  test do
    system "#{bin}/code", "--help"
  end
end
