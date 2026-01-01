class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.26"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.26/code-aarch64-apple-darwin.tar.gz"
      sha256 "f9a40239e520bcf0e34e4dd082b7a17ddd9ef91c8a2e9222d4aae006629014c9"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.26/code-x86_64-apple-darwin.tar.gz"
      sha256 "16df52be22b1ea9b542a8087318f7e8733d780ad761448996d736bec02ac4dab"
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
