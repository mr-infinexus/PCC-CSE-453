if [ $# -ne 1 ]; then
   echo "Usage: $0 <filename>"
   exit 1
fi

filename=$1

if [ ! -f $filename ]; then
   echo "Error: File '$filename' not found."
   exit 1
fi
filename=$1

if [ ! -f $filename ]; then
   echo "Error: File '$filename' not found."
   exit 1
fi

word_count=$(wc -w <$filename)
echo "THe file '$filename' contains $word_count words."
