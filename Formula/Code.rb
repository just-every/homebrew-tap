class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.54"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.54/code-aarch64-apple-darwin.tar.gz"
      sha256 "edd798e9698d93dcfbed6db84b4c54c6edb61437a160d0bf007ae8db402bcdbb"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.54/code-x86_64-apple-darwin.tar.gz"
      sha256 "478c91f10101ce5d4ea2a3876c3b947c62e72f797e355981eb8e0462a2599e67"
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
