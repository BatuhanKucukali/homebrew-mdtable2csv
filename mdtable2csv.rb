class Mdtable2csv < Formula
  desc "Markdown Table To Csv File"
  homepage "https://github.com/BatuhanKucukali/mdtable2csv"
  url "https://github.com/BatuhanKucukali/mdtable2csv/archive/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "8481215a99d48e5cb1d8ee776308cc180d78ac37063a888e00e33b8e6e74ffa2"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath / "src/github.com/BatuhanKucukali/mdtable2csv"
    bin_path.install Dir["*"]

    cd bin_path do
      system "go", "build", "-o", bin / "mdtable2csv", "."
    end
  end

end
