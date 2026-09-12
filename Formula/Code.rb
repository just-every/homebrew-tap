class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.186"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.186/code-aarch64-apple-darwin.tar.gz"
      sha256 "8217808f4bafe77a3003510c0020ecaa13d924c160dc5664a205258371aad3e1"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.186/code-x86_64-apple-darwin.tar.gz"
      sha256 "2eec85ff294cfaa0c96c96658b90a58fa52414f610fe23acee94cb3b26a48ec9"
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
