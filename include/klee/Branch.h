#include "klee/Expr.h"
#include <vector>
#include <string>
#include <set>

using std::vector;
using std::string;
using std::set;

namespace klee {

class Branch {
public:
  Branch();
  Branch(string &_functionName, unsigned _id, unsigned _caseId, bool _isSwitchInst, bool _isLoopBranch, bool _isInLoop);
  ~Branch();

  vector<int> static_feature;

  string functionName;
  unsigned id;
  unsigned caseId;
  int selectedCount;
  bool isCovered;
};


}
