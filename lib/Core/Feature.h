#include <vector>
#include <deque>

#include "klee/ExecutionState.h"

using std::vector;
using std::deque;
using std::pair;
using namespace klee;

namespace llvm {
class Instruction;
}

namespace klee {
class Executor;

class DynamicFeature {
public:

protected:
  static int featureCount_;
  vector<bool> checkedStates_;
  bool ready_;

public:
  DynamicFeature();
  ~DynamicFeature();
  virtual void updateFeatureState(const set<ExecutionState*>& states);
  virtual void updateFeatureStateImpl(const set<ExecutionState*>& states);
  virtual void computeFeature(const set<ExecutionState*>& states) = 0;
  bool predicate(int sidx);
  bool isReadyToCompute() { return ready_; }

};

// 13, 14
class IsDeepestState : public DynamicFeature {
public:
  IsDeepestState();
  ~IsDeepestState();
  virtual void computeFeature(const set<ExecutionState*>& states);
};


class IsShallowestState : public DynamicFeature {
public:
  IsShallowestState();
  ~IsShallowestState();
  virtual void computeFeature(const set<ExecutionState*>& states);
};



//15, 16
class IsMostFrequentlyAppearingBranch : public DynamicFeature {
public:
  IsMostFrequentlyAppearingBranch();
  ~IsMostFrequentlyAppearingBranch();
  virtual void computeFeature(const set<ExecutionState*>& states);
};


class IsLeastFrequentlyAppearingBranch : public DynamicFeature {
public:
  IsLeastFrequentlyAppearingBranch();
  ~IsLeastFrequentlyAppearingBranch();
  virtual void computeFeature(const set<ExecutionState*>& states);
};


// 18
class IsSelectedStateBefore : public DynamicFeature {
public:
  IsSelectedStateBefore();
  ~IsSelectedStateBefore();
  virtual void computeFeature(const set<ExecutionState*>& states);
};


// 24~26
class IsFrequentlySelectedBranch : public DynamicFeature {
public:
  IsFrequentlySelectedBranch(const int k);
  ~IsFrequentlySelectedBranch();
  virtual void computeFeature(const set<ExecutionState*>& states);

private:
  int k_;
};


// 27
class IsNearSelectedBefore : public DynamicFeature {
public:
  IsNearSelectedBefore();
  ~IsNearSelectedBefore();
  virtual void computeFeature(const set<ExecutionState*>& states);
};


// 30~31
class IsFreshBranch : public DynamicFeature {
public:
  IsFreshBranch(int _k);
  ~IsFreshBranch();
  virtual void computeFeature(const set<ExecutionState*>& states);

private:
  int k;
};


// 32~34
class IsRecentlySelectedBranch : public DynamicFeature {
public:
  IsRecentlySelectedBranch(const unsigned k);
  ~IsRecentlySelectedBranch();
  virtual void updateFeatureStateImpl(const set<ExecutionState*>& states);
  virtual void computeFeature(const set<ExecutionState*>& states);

private:
  deque<Branch*> branch_history_;

  unsigned k_;
};


// 35
class IsInMostLargestNumOfUncovBr : public DynamicFeature {
public:
  IsInMostLargestNumOfUncovBr(Executor &_executor);
  ~IsInMostLargestNumOfUncovBr();
  virtual void computeFeature(const set<ExecutionState*>& states);

private:
  Executor &executor;
};


// 40
class IsInMostRecentlyReachedFunc : public DynamicFeature {
public:
  IsInMostRecentlyReachedFunc();
  ~IsInMostRecentlyReachedFunc();
  virtual void computeFeature(const set<ExecutionState*>& states);
};


/////////////////////////////////////////
///////////// state features /////////////
/////////////////////////////////////////

//Inst count
class InstCount : public DynamicFeature {
public:
  InstCount(bool top);
  ~InstCount();
  template<typename T> void compute(const set<ExecutionState*>& states, T& st_set);
  virtual void computeFeature(const set<ExecutionState*>& states);

private:
  bool top_;
};


//CP Inst count
class CPInstCount : public DynamicFeature {
public:
  CPInstCount(bool top);
  ~CPInstCount();
  template<typename T> void compute(const set<ExecutionState*>& states, T& st_set);
  virtual void computeFeature(const set<ExecutionState*>& states);

private:
  bool top_;
};

 
// QC
class IsQueryCostLow : public DynamicFeature {
public:
  IsQueryCostLow();
  ~IsQueryCostLow();
  virtual void computeFeature(const set<ExecutionState*>& states);
};


// MD2U
class MinDistToUncov : public DynamicFeature {
public:
  MinDistToUncov();
  ~MinDistToUncov();
  virtual void computeFeature(const set<ExecutionState*>& states);
};


// CovNew
class CovNew : public DynamicFeature {
public:
  CovNew();
  ~CovNew();
  virtual void computeFeature(const set<ExecutionState*>& states);
};

} // end namespace klee

