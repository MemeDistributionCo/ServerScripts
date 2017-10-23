echo "Starting update process..."
echo "Begin clone..."
mkdir clone-dir
cd clone-dir
git clone https://github.com/MemeDistributionCo/MDCBot.git -b master
echo "Clone attempt finished. Attempting jar creation..."
cd MDCBot/MDCBot
gradle shadowJar
echo "Jar creation attempt finished. Attempting relocation..."
mv build/libs/*.jar ~/Bots/MDCBot-latest.jar
echo "Relocation attempt complete. Removing clone..."
cd ../../
rm -rf MDCBot
../
rm -rf clone-dir
echo "Remove clone complete. Update attempt complete."
