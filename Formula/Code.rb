class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.143"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.143/code-aarch64-apple-darwin.tar.gz"
      sha256 "4f899fe9ffd593baa1284cd8d337bb151d504cafe8e1e7513a9ff4534392097f"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.143/code-x86_64-apple-darwin.tar.gz"
      sha256 "d2acecc5a096440d8192228b08ff8f952aeb41f41739483bb84e4ffc843c62ce"
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
