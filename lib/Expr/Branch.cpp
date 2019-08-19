#include "klee/Branch.h"
#include <string.h>
#include <set>
#include "klee/Internal/Support/ErrorHandling.h"

using namespace klee;

Branch::Branch() {assert(false);}

Branch::Branch(string &_functionName, unsigned _id, unsigned _caseId, bool _isSwitchInst, bool _isLoopBranch, bool _isInLoop)
 : functionName(_functionName), id(_id), caseId(_caseId), selectedCount(0), isCovered(0)
{
// feature 1 .........
  if (functionName.compare("__user_main") == 0 || functionName.compare("main") == 0)
    static_feature.push_back(1);
  else
    static_feature.push_back(0);

// feature 2,3
  if (_isLoopBranch) {
    if (caseId) {
      static_feature.push_back(1);
      static_feature.push_back(0);
    }
    else {
      static_feature.push_back(0);
      static_feature.push_back(1);
    }
  }
  else {
    static_feature.push_back(0);
    static_feature.push_back(0);
  }


// feature 10
  if (_isInLoop)
    static_feature.push_back(1);
  else
    static_feature.push_back(0);

// feature 11,12
  if (_isSwitchInst) {
    if (caseId) {
      static_feature.push_back(1);
      static_feature.push_back(0);
    }
    else {
      static_feature.push_back(0);
      static_feature.push_back(1);
   }
  }
  else {
    static_feature.push_back(0);
    static_feature.push_back(0);
  }
}


Branch::~Branch() {}

