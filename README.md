## Initializing a new app
Initializing a new app requires you to mount the target directory into the container like so: `docker run -v /my-new-cdk8s-project:/files brennerm/cdk8s init typescript-app`.

## Synthesizing your app
Synthesizing works similar but instead of mounting an empty directory you need to mount the directory containing your cdk8s code. This could look like: `docker run -v /my-existing-cdk8s-project:/files brennerm/cdk8s synth`.

## Synthezising Python code
To be able to synthesize Python cdk8s code you need to use the _brennerm/cdk8s:python_ image. It contains additional dependencies like Python 3.7 and pipenv.
