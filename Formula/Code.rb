class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.45"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.45/code-aarch64-apple-darwin.tar.gz"
      sha256 "7ec7e93bbdb990e114a5041f5d3905c7c5d568db68f33a853d828f320bc9100b"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.45/code-x86_64-apple-darwin.tar.gz"
      sha256 "b17afaac1226f811d583b324a3a96c36ecd90d4197dbf9db878b1f5c39941dd2"
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
