class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.51"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.51/code-aarch64-apple-darwin.tar.gz"
      sha256 "d318b3eef124b7f389641384e6fdd9d6ccf39451950b926fc2dab4a0a5cfacfe"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.51/code-x86_64-apple-darwin.tar.gz"
      sha256 "dc4c25b5c1b94052307161a6d81b873ffb1ba588bff5eabe84b64102901f06ad"
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
