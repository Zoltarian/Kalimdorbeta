#!/usr/bin/env python3
import os, sys, fnmatch, re

__version__ = 1.0

def main():
    print("Validating Basic Style")

    files_list = []
    leaderID = 1
    idRange = 0

    # Allow running from root directory as well as from inside the tools directory
    scriptDir = os.path.realpath(__file__)
    rootDir = os.path.dirname(os.path.dirname(scriptDir))

    for root, dirnames, filenames in os.walk(rootDir + '/' + 'history/countries/'):
        for filename in fnmatch.filter(filenames, '*.txt'):
            files_list.append(os.path.join(root, filename))
            print(filename)

    for filename in files_list:
        newContent = ""
        with open(filename, 'r', encoding='utf-8', errors='ignore') as file:
            content = file.readlines()
            for line in content:
                hasSkill = re.search(r'([ \t]+)skill[ \t]+?=[ \t]+?([0-9]+)', line, re.M | re.I)
                hasNavyLeader = re.search(r'[ \t]+?create_navy_leader', line, re.M | re.I)
                hasID = re.search(r'[ \t]+?id =', line, re.M | re.I)

                if hasSkill == True:
				    if hasID != True:
                        newContent += hasSkill.group(1)+ "id = " + str(leaderID) + "\n" 
                        leaderID += 1                                                   
					if hasNavyLeader != True:
                        newContent += hasSkill.group(1)+ "skill = " + hasSkill.group(2) + "\n"
			    else:                    
                    newContent += line   
        #print(newContent)
        file.close()
        with open(filename, 'w', encoding='utf-8', errors='ignore') as file:
            file.write(newContent)
            print("Updated: ", filename, "/n")
        file.close()
        idRange +=300
        leaderID = (idRange)
        #input("Press Enter to continue...")

    print ("Generation completed")

if __name__ == "__main__":
    sys.exit(main())
