class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.120"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.120/code-aarch64-apple-darwin.tar.gz"
      sha256 "ef0d8b68f58e0fea7c397259ecae0e733e3217836f1ad5fc74be97f901ed373d"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.120/code-x86_64-apple-darwin.tar.gz"
      sha256 "3860c4c9aee1786100fea272832ffefc0df39b8586e52ccdf8ab86d414193464"
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
