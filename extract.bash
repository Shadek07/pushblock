for i in `seq 1 10`;
do
  echo worker $i
  # on cloud:
  # CUDA_VISIBLE_DEVICES=-1 xvfb-run -a -s "-screen 0 1400x900x24 +extension RANDR" -- python extract.py --workerid $i  &
  # on macbook for debugging:
  CUDA_VISIBLE_DEVICES=-1 python extract.py --workerid $i &
  sleep 1.0
done
