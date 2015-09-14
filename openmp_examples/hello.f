      PROGRAM HELLO
      INTEGER NTHREADS, THREADID, OMP_GET_NUM_THREADS,
     +           OMP_GET_THREAD_NUM

!$OMP PARALLEL PRIVATE(THREADID)
      THREADID = OMP_GET_THREAD_NUM()
      PRINT *, 'Hello World from thread = ', THREADID

      IF ( THREADID .EQ. 0 ) THEN
        NTHREADS = OMP_GET_NUM_THREADS()
        PRINT *, 'Number of threads is ', NTHREADS
      END IF
!$OMP END PARALLEL

      END

