class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.127"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.127/code-aarch64-apple-darwin.tar.gz"
      sha256 "5b9d3dc15a15ca444c5cae2033e6bd7c94fd385b9d0d51336068bf88ffd294ba"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.127/code-x86_64-apple-darwin.tar.gz"
      sha256 "1057c817a14bc2735e3b94b9e7db7c837f6c34ab65cddaf22150921df6c6e424"
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
