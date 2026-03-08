class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.79"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.79/code-aarch64-apple-darwin.tar.gz"
      sha256 "e9e43a565333bcc97a8334b18768586be95f663b84c08e10e742b6714bdc0193"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.79/code-x86_64-apple-darwin.tar.gz"
      sha256 "0899948c6616d34131daafd8f21a68f064b7beceec6ccbd60390e9f1d3524cd9"
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
