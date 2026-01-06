class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.38"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.38/code-aarch64-apple-darwin.tar.gz"
      sha256 "fc1b473243a055d5d6eebf1aca1cf60fa04c722fb0c131dd8d60c84430be6d99"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.38/code-x86_64-apple-darwin.tar.gz"
      sha256 "e4791fd190bd078d28b0d209fcfc2b7fd77b69fd4e0e02dcf09ff48474a3c374"
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
