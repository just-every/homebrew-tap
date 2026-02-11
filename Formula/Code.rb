class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.62"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.62/code-aarch64-apple-darwin.tar.gz"
      sha256 "241c4545e086643e08f1c7d3470abd5eb25d0ca72116cfc6491c159b87b2cd92"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.62/code-x86_64-apple-darwin.tar.gz"
      sha256 "748409e89adddc0d09a13cea331293d12b5351c9d7026ad236f66bf9982487ff"
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
