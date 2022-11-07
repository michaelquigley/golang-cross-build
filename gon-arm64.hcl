source = ["./dist/golang-cross-build_darwin_amd64_v1/funkify", "./dist/golang-cross-build_darwin_arm64/funkify"]
bundle_id = "io.zrok.zrok"

apple_id {
	username = "@env:AC_USERNAME"
	password = "@env:AC_PASSWORD"
}

sign {
	application_identity = "Apple Distribution: NetFoundry Inc"
}