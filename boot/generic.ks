wait 0.
set volume(1):name to core:tag.
if volume(1):name = "Falcon9S1" {
	if not exists("1:/falcon.ks") {
		copypath("0:/boot/falcon.ks","1:").
	}
	runpath("1:/falcon.ks").
} else if volume(1):name = "Falcon9S1-Grasshopper" {
	if not exists("1:/falcon_hover_test.ks") {
		copypath("0:/boot/falcon_hover_test.ks","1:").
	}
	runpath("1:/falcon_hover_test.ks").
} else if volume(1):name = "Falcon9S2" {
	if not exists("1:/falcons2.ks") {
		copypath("0:/boot/falcons2.ks","1:").
	}
	runpath("1:/falcons2.ks").
}