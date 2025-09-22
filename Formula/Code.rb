class Code < Formula
  desc "Terminal coding agent"
  homepage "https://github.com/just-every/code"
  version "v0.2.158"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/just-every/code/releases/download/v0.2.158/code-aarch64-apple-darwin.tar.gz"
      sha256 "4aec633b5572db3a6d337e306bb282181ed7995db9f1adce7867f5883f7c13bf"
    else
      url "https://github.com/just-every/code/releases/download/v0.2.158/code-x86_64-apple-darwin.tar.gz"
      sha256 "3315405f329be6a798ef6d259a05d80d59761054d9721a065e125c092042f0ea"
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
