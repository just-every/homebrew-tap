class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.89"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.89/code-aarch64-apple-darwin.tar.gz"
      sha256 "16bf46a2146f072e0e29afdb4e21d3fabd5ff7f3e8ef34f2272697aae44c54ae"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.89/code-x86_64-apple-darwin.tar.gz"
      sha256 "73217345e1a94501acb925e129d1e3769dccfea213b33cfb06973466d41fae41"
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
