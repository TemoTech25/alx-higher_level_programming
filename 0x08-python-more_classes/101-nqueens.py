#!/usr/bin/python3
"""
N Queens puzzle
"""

import sys

def is_safe(board, row, col, N):
    """Check if it's safe to place a queen at board[row][col]"""
    for i in range(row):
        if board[i] == col or board[i] - i == col - row or board[i] + i == col + row:
            return False
    return True

def solve_nqueens(N):
    """Solve the N Queens puzzle"""
    if N < 4:
        print("N must be at least 4")
        sys.exit(1)

    board = [-1] * N
    solve(board, 0, N)

def solve(board, row, N):
    """Recursively solve the N Queens puzzle"""
    if row == N:
        print_solution(board, N)
        return

    for col in range(N):
        if is_safe(board, row, col, N):
            board[row] = col
            solve(board, row + 1, N)
            board[row] = -1

def print_solution(board, N):
    """Print the solution in a specific format"""
    solution = []
    for i in range(N):
        solution.append([i, board[i]])
    print(solution)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: nqueens N")
        sys.exit(1)

    try:
        N = int(sys.argv[1])
    except ValueError:
        print("N must be a number")
        sys.exit(1)

    solve_nqueens(N)
