fvm flutter build web --release --dart-define-from-file=.env
s3cmd --storage-class COLD put ./build/web/ s3://truth-or-action-ai/ -r
