% if mode == 'definition':
balanced.BankAccountVerification.fetch()

% elif mode == 'request':
import balanced

balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')
verification = balanced.BankAccountVerification.fetch('/verifications/BZ30hb4BvSmoUMZiDdIMyz8K')
% endif