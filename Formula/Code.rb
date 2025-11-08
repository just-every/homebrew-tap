class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.4.12"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.4.12/code-aarch64-apple-darwin.tar.gz"
      sha256 "c7d0808f7c2a7b34436e8977200f331fba7fe879b42a0625a19c307007db379f"
    else
      url "https://github.com/just-every/code/releases/download/v0.4.12/code-x86_64-apple-darwin.tar.gz"
      sha256 "4869d825242024ea1c2f3b8989cf2b184298bedb6fd4f9484be2103eba965391"
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
