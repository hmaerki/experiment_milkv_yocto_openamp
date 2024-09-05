set -x 

for machine in "milkv-duo" "milkv-duo256m" "milkv-duos"; do
  export KAS_MACHINE=${machine}
  echo "Building for $machine"
  (time kas build meta-milkv/kas-project.yml) 2>&1 | tee build_${machine}.log
done
