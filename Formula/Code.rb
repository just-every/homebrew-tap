class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.149"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.149/code-aarch64-apple-darwin.tar.gz"
      sha256 "40446eaf4c4a2be949b9f2b3e7d2e4db11294cf2a436a58f9d391938b76605f2"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.149/code-x86_64-apple-darwin.tar.gz"
      sha256 "be0f119814ec376fdcabb91de8251b990596dbefa3f1242e7d15e47d50a4905c"
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
