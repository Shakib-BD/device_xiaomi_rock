git clone -b 15-QPR2 https://github.com/mondrian-x/packages_apps_JamesDSPManager.git packages/apps/JamesDSPManager
#---------- Fuck libssl-v32.so & libcrypto-v32.so --------#
cd hardware/lineage/compat
git fetch https://github.com/halcyonproject/hardware_halcyon_compat.git
git cherry-pick 1cdc460268c0f967144da4b69eabbabbffec7195
cd -
