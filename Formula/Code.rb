class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.169"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.169/code-aarch64-apple-darwin.tar.gz"
      sha256 "b90f05ae5fb55677c2bc96d925a8573afbac1af302c4ae7f21777eb6fa47fa70"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.169/code-x86_64-apple-darwin.tar.gz"
      sha256 "8c9cabc2fc335cd148a98ac7c05d3f2338f03a04a2ac04b17e8882bccc515e88"
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
