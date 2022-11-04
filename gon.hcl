source = ["./dist/golang-cross-build_darwin_amd64_v1/funkify", "./dist/golang-cross-build_darwin_arm64/funkify"]
bundle_id = "io.zrok.zrok"

apple_id {
	username = "michael.quigley@netfoundry.io"
	password = ""
}

sign {
	application_identity = "Apple Distribution: NetFoundry Inc"
}