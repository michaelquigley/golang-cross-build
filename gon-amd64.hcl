source = ["dist/funkify-amd64_darwin_amd64_v1/funkify"]
bundle_id = "io.zrok.zrok"

apple_id {
	username = "@env:AC_USERNAME"
	password = "@env:AC_PASSWORD"
}

sign {
	application_identity = "Apple Distribution: NetFoundry Inc"
}

notarize {
    path = "dist/funkify-amd64_darwin_amd64_v1/funkify"
    bundle_id = "io.zrok.zrok"
    staple = true
}
