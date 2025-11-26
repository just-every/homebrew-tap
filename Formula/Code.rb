class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.8"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.8/code-aarch64-apple-darwin.tar.gz"
      sha256 "9345749437ac53740c2192e787882a2167a7193e53511e9bc97a7ad5350f4a02"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.8/code-x86_64-apple-darwin.tar.gz"
      sha256 "b0e126e5cb60835612ff07efbc2db0aa7c17a19bfde8433488af32a8ec026148"
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
