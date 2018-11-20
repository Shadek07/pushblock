for i in `seq 1 4`;
do
  echo worker $i
  # on cloud:
  # xvfb-run -a -s "-screen 0 1400x900x24 +extension RANDR" -- python extract.py  &
  # on macbook for debugging:
  python extract.py --workerid $i &
  sleep 1.0
done
