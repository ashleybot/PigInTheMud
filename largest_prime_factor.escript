#!/usr/bin/env escript
%%! -smp enable -sname largest_prime_factor

%%%
%%% The prime factors of 13195 are 5, 7, 13 and 29.
%%% What is the largest prime factor of the number 600851475143 ?
%%%

main([String]) ->
  N = list_to_integer(String),
  PrimeFactors = pfac(N),
  Max = lists:max(PrimeFactors),
  io:format("largest prime factor: ~w = ~w\n", [N, Max]);
main(_) ->
  usage().

usage() ->
  io:format("usage: number\n"),
  halt(1).

pfac(N) ->
  lists:flatten([pfac(N, 2)]).
pfac(N, D) when (N rem D == 0) and (N > 1) ->
  [D, pfac(round(N / D), D + 1)];
pfac(N, D) when N > 1 ->
  [pfac(N, D + 1)];
pfac(_N, _D) ->
  [].
