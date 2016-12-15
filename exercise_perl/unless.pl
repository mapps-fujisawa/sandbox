warn 'test' unless 1;
warn 'test' unless 1 and 0;
warn 'test' unless 1 and 1;
warn 'test' unless 0 and 1;
warn 'test' unless (0 and 0);
