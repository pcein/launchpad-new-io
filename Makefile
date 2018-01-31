
debug:
	xargo build
	arm-none-eabi-objcopy -O binary target/thumbv7em-none-eabihf/debug/launchpad-newio upload/launchpad.debug.bin

release:
	xargo build --release
	arm-none-eabi-objcopy -O binary target/thumbv7em-none-eabihf/release/launchpad-newio upload/launchpad.release.bin

flash:
	sudo lm4flash upload/launchpad.release.bin

clean:
	xargo clean
	rm upload/*
