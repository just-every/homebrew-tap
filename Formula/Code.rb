class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.6.126"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.6.126/code-aarch64-apple-darwin.tar.gz"
      sha256 "ddafdc1b5b64f56ac691fabe1278c5ef8b4a1377281b832740d686b4b1a3c748"
    else
      url "https://github.com/just-every/code/releases/download/v0.6.126/code-x86_64-apple-darwin.tar.gz"
      sha256 "ecde74621b93a57fb5b479cc3afd4364df46303641a14ad17c1acb15d5823aeb"
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
