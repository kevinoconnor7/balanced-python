% if mode == 'definition':
balanced.Card.query

% elif mode == 'request':
import balanced

balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

cards = balanced.Card.query
% elif mode == 'response':

% endif