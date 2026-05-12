## [1.1.3](https://github.com/slmingol/Solitairey/compare/v1.1.2...v1.1.3) (2026-05-12)


### Bug Fixes

* **mobile:** restore pinch-zoom and auto-scale game to viewport ([fb1ce25](https://github.com/slmingol/Solitairey/commit/fb1ce258e626251c0a1a7b6cc4e1f0b44bfd251f))

## [1.1.2](https://github.com/slmingol/Solitairey/compare/v1.1.1...v1.1.2) (2026-05-11)


### Bug Fixes

* **mobile:** viewport meta, touch-action, broader device detection, orientation ([b3e2549](https://github.com/slmingol/Solitairey/commit/b3e25498e27415a563f77b3dd12703dfa8421fa9))

## [1.1.1](https://github.com/slmingol/Solitairey/compare/v1.1.0...v1.1.1) (2026-05-11)


### Bug Fixes

* **ci:** trigger docker build on release published, not tag push ([134dd3f](https://github.com/slmingol/Solitairey/commit/134dd3f6caefd922e13fd2202f01f44365f27297))

# [1.1.0](https://github.com/slmingol/Solitairey/compare/v1.0.0...v1.1.0) (2026-05-11)


### Bug Fixes

* **ci:** point semantic-release at slmingol fork, not upstream shlomif ([7f7efb2](https://github.com/slmingol/Solitairey/commit/7f7efb2ccbd30c6116ee16cac4e5bbce197198a2))
* **ci:** use PAT for checkout so semantic-release can read remote branches ([06c874c](https://github.com/slmingol/Solitairey/commit/06c874cb7fec8f09ff407f52d6fcf66c14e71983))
* **deps:** remove unused packages, drop 49 vulnerabilities ([e90b165](https://github.com/slmingol/Solitairey/commit/e90b165fcde3967b6dab449399cb3e3e2dfc6bff))
* use 127.0.0.1 in healthcheck to avoid IPv6 localhost resolution ([d93cee1](https://github.com/slmingol/Solitairey/commit/d93cee17b050665ef27aecd3fee3d6722d63ea2e))


### Features

* **ci:** add semantic-release for automated version bumping ([64eb809](https://github.com/slmingol/Solitairey/commit/64eb80977ff759e1a19417eaaaee9f795ec1a0db))
* **dev:** pre-bake dev image to avoid reinstalling deps on every run ([c19125e](https://github.com/slmingol/Solitairey/commit/c19125eba360e2d2cb3b2ffe1ec138c4398a58c7))


### Reverts

* remove pull_policy always from compose ([ae541e8](https://github.com/slmingol/Solitairey/commit/ae541e8478e8aded9197a9145eb3bcc9d23b00d0))
