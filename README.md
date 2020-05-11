## Initializing a new app
Initializing a new app requires you to mount the target directory into the container like so: `docker run -v /my-new-cdk8s-project:/files brennerm/cdk8s init typescript-app`.

## Synthesizing your app
Synthesizing works similar but instead of mounting an empty directory you need to mount the directory containing your cdk8s code. This could look like: `docker run -v /my-existing-cdk8s-project:/files brennerm/cdk8s synth`.

## Synthezising Python code
To be able to synthesize Python cdk8s code you need to use the _brennerm/cdk8s:python_ image. It contains additional dependencies like Python 3.7 and pipenv.

## Setting the owner of generated files
No matter if you are initializing a new app or synthesizing your manifests, all generated files will have a root ownership afterwards. This happens cause cdk8s is being executed as root to be able to read and write files from and to the volume due to [this issue](https://github.com/moby/moby/issues/2259). To fix this you can pass the `-u uid=$(id -u)` parameter to the `docker run command`. Tried to prevent executing as root but currently it does not seem possible while keeping a good user experience of the resulting image.
