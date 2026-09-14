class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.188"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.188/code-aarch64-apple-darwin.tar.gz"
      sha256 "3bb4eb8c6ea60846398cbfe11a5f47432b3755a7fcdc69722ff0921fa34b08fe"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.188/code-x86_64-apple-darwin.tar.gz"
      sha256 "7e66404bfcf28904e0fb106c2b727687f2437d0985e2fedd70b9c48ffc3296fe"
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
