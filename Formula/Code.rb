class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.133"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.133/code-aarch64-apple-darwin.tar.gz"
      sha256 "76ade47a30b0ed05126960c0c6d8f1b8f03af770cc3f5a21826ddc788fdc7fd7"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.133/code-x86_64-apple-darwin.tar.gz"
      sha256 "3b63f014ef73be4bded84a8f3e8fc6bed62f7c635f643b602228aabdcc2bfdb7"
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
