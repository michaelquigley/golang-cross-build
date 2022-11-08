source = ["dist/funkify-amd64_darwin_amd64_v1/funkify"]
bundle_id = "com.quigley.funkify"

apple_id {
	username = "@env:AC_USERNAME"
	password = "@env:AC_PASSWORD"
}

sign {
	application_identity = "Apple Distribution: NetFoundry Inc"
}
