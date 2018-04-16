# list
MYAN_FUNC=$MYAN_HOME/func
function list()
{
    echo "===list==="
    if [ -d "$MYAN_FUNC" ]
    then
        for FUNC_NAME in $(ls $MYAN_FUNC); do
            FUNC_NAME=$(echo $FUNC_NAME|sed 's/\.sh//g')
            echo $FUNC_NAME
        done
    fi
    echo "=========="
}
