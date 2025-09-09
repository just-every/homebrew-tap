class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.104"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.104/code-aarch64-apple-darwin.tar.gz"
      sha256 "31f063a7f2223df6fe03b553ef941a76bba590fc1ca0d9f56ac0741f329065b6"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.104/code-x86_64-apple-darwin.tar.gz"
      sha256 "7760ec28d5ccdf79e6b5ff4ed51d79a2526c02a652fee170244d1373b55827df"
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
