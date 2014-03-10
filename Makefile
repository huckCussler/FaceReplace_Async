all: compile run

compile: ImgRgn.class Master.class Main.class

ImgRgn.class: ImgRgn.hj
	cd ../ ; hjc frAsync/ImgRgn.hj

Master.class: Master.hj
	cd ../ ; hjc frAsync/Master.hj

Main.class: Main.hj
	cd ../ ; hjc frAsync/Main.hj

run:
	cd ../ ; hj frAsync.Main rawImgsForTimingTests/sixFour/sixFourBySixFour/

clean:
	rm -f *~
	rm -f *#
	rm -f *.class