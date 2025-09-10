class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.113"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.113/code-aarch64-apple-darwin.tar.gz"
      sha256 "df91c60858be5dc330ebcddbe04a3eb18b059fa58ba977c00dfeb3c23c4ee8eb"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.113/code-x86_64-apple-darwin.tar.gz"
      sha256 "9844776040f0b2a78e072b2fd6f0fef4faeff0f21e82b38763bd6ad06a0d8bf0"
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
