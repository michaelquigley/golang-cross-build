source = ["dist/funkify-arm64_darwin_arm64/funkify"]
bundle_id = "com.quigley.funkify"

apple_id {
	username = "@env:AC_USERNAME"
	password = "@env:AC_PASSWORD"
}

sign {
	application_identity = "@env:AC_APP_IDENTITY"
}
