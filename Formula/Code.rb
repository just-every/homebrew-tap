class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.164"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.164/code-aarch64-apple-darwin.tar.gz"
      sha256 "eace89acdbf8f1f5c1c38557f869f46feac237a2e0c9a56f40f44a771872792a"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.164/code-x86_64-apple-darwin.tar.gz"
      sha256 "3f6891334da47197b0ad288f69557e5f388845782af2d08a3535f6dcccb284a7"
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
