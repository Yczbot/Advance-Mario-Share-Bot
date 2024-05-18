if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Yczbot/Advance-Mario-Share-Bot /Advance-Mario-Share-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-Mario-Share-Bot
fi
cd /Advance-Mario-Share-Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
