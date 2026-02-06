class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.59"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.59/code-aarch64-apple-darwin.tar.gz"
      sha256 "f733d7e27e0ccd0f661defcd19bd86321b9f895156839e95788fef25f3abb5df"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.59/code-x86_64-apple-darwin.tar.gz"
      sha256 "141cfb711011572eb0cbe560a61c5cefc64f45e1d8cb86c44d09ca5ca1d5dd29"
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
