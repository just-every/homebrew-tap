class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.5.3"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.5.3/code-aarch64-apple-darwin.tar.gz"
      sha256 "25f8467f6e0b25cd704ad75df1e8c777422880ba2385edc923d69a7a3c915a0f"
    else
      url "https://github.com/just-every/code/releases/download/v0.5.3/code-x86_64-apple-darwin.tar.gz"
      sha256 "af8903166527b2e5b6b396a00e0f5e2a6396b8c70dbcdda406da70ee7b20243f"
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
