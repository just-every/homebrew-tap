class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.10"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.10/code-aarch64-apple-darwin.tar.gz"
      sha256 "92a6cc64ebe635378cf44c2e49cccd1070f6fa59d3f998aaf25ab60552679f52"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.10/code-x86_64-apple-darwin.tar.gz"
      sha256 "de5ef0d8e93788a203029faab1afe80a8e7f0bb25199519142185109940e9e01"
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
