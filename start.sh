if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/phoenix-monarch/AutoFilterBot-2.git /AutoFilter2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-V5
fi
cd /Auto-Filter-V5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
