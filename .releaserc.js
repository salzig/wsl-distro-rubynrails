module.exports = {
  branches: ["main"],
  plugins: [
    "@semantic-release/commit-analyzer",
    "@semantic-release/release-notes-generator",
    "@semantic-release/changelog",
    [
      "@semantic-release/exec",
      {
        prepareCmd:
          "sed --in-place 's_${lastRelease.version}_${nextRelease.version}_' README.md",
      },
    ],
    [
      "@semantic-release/github",
      {
        assets: [{ path: "wsl-distro-rubynrails.tar" }],
      },
    ],
    "@semantic-release/git",
  ],
};
