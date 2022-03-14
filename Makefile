CC				= cc

CC_FLAGS		= -Wall -Wextra -Werror

AR				= ar rcs

RM				= rm -f

HEADERS_PATH	= ../ ../bonus
LIBFTPF_LINK	= -L.. -l:libftprintf.a

all:			
				make all -C ../

bonus:
				make bonus -C ../

clean:			
				make clean -C ../

fclean:			make fclean -C ../
				$(RM) tests/*.out
				$(RM) tests/*.a
				$(RM) tests/*.log

test:			bonus
				@$(CC) $(CC_FLAGS) tests/test.c $(LIBFTPF_LINK) -o tests/test.out && ./tests/test.out

test_mandatory:	all
				@$(CC) $(CC_FLAGS) tests/test_mandatory_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_mandatory_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_mandatory] ::: "
				@bash tests/test.sh
				@echo ""

test_bonus:		test_c test_s test_d test_i test_u test_x test_uppx test_p test_percent

test_c:			bonus
				@$(CC) $(CC_FLAGS) tests/test_c_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_c_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_c] ::: "
				@bash tests/test.sh
				@echo ""

test_s:			bonus
				@$(CC) $(CC_FLAGS) tests/test_s_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_s_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_s] ::: "
				@bash tests/test.sh
				@echo ""

test_d:			bonus
				@$(CC) $(CC_FLAGS) tests/test_d_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_d_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_d] ::: "
				@bash tests/test.sh
				@echo ""

test_i:			bonus
				@$(CC) $(CC_FLAGS) tests/test_i_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_i_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_i] ::: "
				@bash tests/test.sh
				@echo ""

test_u:			bonus
				@$(CC) $(CC_FLAGS) tests/test_u_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_u_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_u] ::: "
				@bash tests/test.sh
				@echo ""

test_x:			bonus
				@$(CC) $(CC_FLAGS) tests/test_x_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_x_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_x] ::: "
				@bash tests/test.sh
				@echo ""

test_uppx:		bonus
				@$(CC) $(CC_FLAGS) tests/test_uppx_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_uppx_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_X] ::: "
				@bash tests/test.sh
				@echo ""

test_p:			bonus
				@$(CC) $(CC_FLAGS) tests/test_p_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_p_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_p] ::: "
				@bash tests/test.sh
				@echo ""

test_percent:	bonus
				@$(CC) $(CC_FLAGS) tests/test_percent_expected.c -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_expected.log" ./tests/test.out > tests/expected.log
				@$(CC) $(CC_FLAGS) tests/test_percent_result.c $(LIBFTPF_LINK) -o tests/test.out -I $(HEADERS_PATH)
				@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -q --log-file="tests/valgrind_result.log" ./tests/test.out > tests/result.log
				@echo ""
				@echo -n "[test_percent] ::: "
				@bash tests/test.sh
				@echo ""
