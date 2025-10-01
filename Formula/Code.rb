class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.180"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.180/code-aarch64-apple-darwin.tar.gz"
      sha256 "5f8c8ce26776d0c3969ab79a2c8a360183081014fe658eb810f531f383cc195d"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.180/code-x86_64-apple-darwin.tar.gz"
      sha256 "f9ba8e090d94bf5e088e297e59ab90fadcfacc514746aef0bae817018ac0ebd7"
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
