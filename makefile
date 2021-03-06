
TARGET=time_calc
all : $(TARGET)
$(TARGET): time_calc.o time_spec.o seconds.o time_arg.o
	gcc -Wall -Wextra time_calc.o time_spec.o seconds.o time_arg.o -o time_calc

time_calc.o: time_calc.c time_calc.h time_spec.h seconds.h time_arg.h 
	gcc -Wall -Wextra -c time_calc.c
time_spec.o: time_spec.c time_spec.h time_calc.h 
	gcc -Wall -Wextra -c time_spec.c
seconds.o: seconds.c time_calc.h seconds.h 
	gcc -Wall -Wextra -c seconds.c
time_arg.o: time_arg.c time_arg.h time_spec.h time_calc.h seconds.h 
	gcc -Wall -Wextra -c time_arg.c

clean : rm -f $(TARGET) time_calc.o time_spec.o seconds.o time_arg.o
