add_test( [==[Runs without a seg fault]==] /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build/test-lib [==[Runs without a seg fault]==]  )
set_tests_properties( [==[Runs without a seg fault]==] PROPERTIES WORKING_DIRECTORY /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build)
add_test( [==[Produces an output PNG file]==] /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build/test-lib [==[Produces an output PNG file]==]  )
set_tests_properties( [==[Produces an output PNG file]==] PROPERTIES WORKING_DIRECTORY /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build)
add_test( [==[Pixels that are part of the sketch are your favorite color]==] /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build/test-lib [==[Pixels that are part of the sketch are your favorite color]==]  )
set_tests_properties( [==[Pixels that are part of the sketch are your favorite color]==] PROPERTIES WORKING_DIRECTORY /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build)
add_test( [==[Pixels that are NOT part of the sketch are white]==] /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build/test-lib [==[Pixels that are NOT part of the sketch are white]==]  )
set_tests_properties( [==[Pixels that are NOT part of the sketch are white]==] PROPERTIES WORKING_DIRECTORY /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build)
add_test( [==[in_01.png produces a correct sketch]==] /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build/test-lib [==[in_01.png produces a correct sketch]==]  )
set_tests_properties( [==[in_01.png produces a correct sketch]==] PROPERTIES WORKING_DIRECTORY /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build)
add_test( [==[in_02.png produces a correct sketch]==] /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build/test-lib [==[in_02.png produces a correct sketch]==]  )
set_tests_properties( [==[in_02.png produces a correct sketch]==] PROPERTIES WORKING_DIRECTORY /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build)
add_test( [==[in_03.png produces a correct sketch]==] /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build/test-lib [==[in_03.png produces a correct sketch]==]  )
set_tests_properties( [==[in_03.png produces a correct sketch]==] PROPERTIES WORKING_DIRECTORY /mnt/c/Users/14677/Documents/GitHub/release-f22/lab_debug/build)
set( test-lib_TESTS [==[Runs without a seg fault]==] [==[Produces an output PNG file]==] [==[Pixels that are part of the sketch are your favorite color]==] [==[Pixels that are NOT part of the sketch are white]==] [==[in_01.png produces a correct sketch]==] [==[in_02.png produces a correct sketch]==] [==[in_03.png produces a correct sketch]==])
