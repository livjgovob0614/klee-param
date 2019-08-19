#include <vector>
#include <set>
#include <map>
#include <string>
#include <functional>

#include "CoreStats.h"
#include "Feature.h"
#include "Executor.h"
#include "StatsTracker.h"

#include "klee/Statistics.h"
#include "klee/Internal/Support/ErrorHandling.h"
#include "klee/Internal/Module/InstructionInfoTable.h"
#include "klee/Internal/Module/KInstruction.h"
#include "llvm/IR/Instructions.h"


using namespace klee;
using namespace std;

int DynamicFeature::featureCount_ = 0;

DynamicFeature::DynamicFeature()
 : ready_(false) {
  DynamicFeature::featureCount_++;
}

DynamicFeature::~DynamicFeature() {}

void DynamicFeature::updateFeatureState(const set<ExecutionState*>& states)
{
  ready_ = true;
  checkedStates_.clear();

  updateFeatureStateImpl(states);
}

void DynamicFeature::updateFeatureStateImpl(const set<ExecutionState*>& states) {}

bool DynamicFeature::predicate(int sidx)
{
  if (ready_)
    return checkedStates_[sidx];
  else
    return false;
}


// Dynamic Features

// 13,14
IsDeepestState::IsDeepestState()
  : DynamicFeature() {}

IsDeepestState::~IsDeepestState() {}

void IsDeepestState::computeFeature(const set<ExecutionState*>& states)
{
  set<pair<unsigned int, ExecutionState*>, greater<pair<unsigned int, ExecutionState*>> > st_set;
  for (auto const& st: states) {
    st_set.insert(make_pair(st->depth, st));
  }

  auto st_set_end = st_set.begin();
  advance(st_set_end, states.size() / 0.1);

  for (auto const& st : states){
    auto it = find(st_set.begin(), st_set_end, make_pair(st->depth, st));
    if (it != st_set_end)
        checkedStates_.push_back(true);
    else
        checkedStates_.push_back(false);
  }
}


IsShallowestState::IsShallowestState()
  : DynamicFeature() {}

IsShallowestState::~IsShallowestState() {}

void IsShallowestState::computeFeature(const set<ExecutionState*>& states)
{
  set<pair<unsigned int, ExecutionState*>> st_set;
  for (auto const& st: states) {
    st_set.insert(make_pair(st->depth, st));
  }

  auto st_set_end = st_set.begin();
  advance(st_set_end, states.size() / 0.1);

  for (auto const& st : states){
    auto it = find(st_set.begin(), st_set_end, make_pair(st->depth, st));
    if (it != st_set_end)
        checkedStates_.push_back(true);
    else
        checkedStates_.push_back(false);
  }
}

// 15, 16
IsMostFrequentlyAppearingBranch::IsMostFrequentlyAppearingBranch()
 : DynamicFeature() {}

IsMostFrequentlyAppearingBranch::~IsMostFrequentlyAppearingBranch() {}

void IsMostFrequentlyAppearingBranch::computeFeature(const set<ExecutionState*>& states)
{
  map<Branch*, int> br_map;
  int max_val = 1;

  for (auto const& st: states) {
    Branch* br = st->lastBranch;
    map<Branch*, int>::iterator m_it = br_map.find(br);

    if (m_it != br_map.end()) {
      int cnt = ++m_it->second;

      if (max_val < cnt)
        max_val = cnt;
    }
    else {
      br_map.insert(make_pair(br, 1));
    }
  }

  for (auto const& st: states) {
    Branch* br = st->lastBranch;
    int cnt = br_map.find(br)->second;

    if (cnt == max_val)
      checkedStates_.push_back(true);
    else
      checkedStates_.push_back(false);
  }
}


IsLeastFrequentlyAppearingBranch::IsLeastFrequentlyAppearingBranch()
 : DynamicFeature() {}

IsLeastFrequentlyAppearingBranch::~IsLeastFrequentlyAppearingBranch() {}

void IsLeastFrequentlyAppearingBranch::computeFeature(const set<ExecutionState*>& states)
{
  map<Branch*, int> br_map;
  for (auto const& st: states) {
    Branch* br = st->lastBranch;
    map<Branch*, int>::iterator m_it = br_map.find(br);

    if (m_it != br_map.end())
      ++m_it->second;
    else
      br_map.insert(make_pair(br, 1));
  }

  int min_val = min_element(br_map.begin(), br_map.end(),
                             [] (const pair<Branch*, int>& p1, const pair<Branch*, int>& p2)
                             { return p1.second < p2.second; })->second;


  for (auto const& st: states) {
    Branch* br = st->lastBranch;
    int cnt = br_map.find(br)->second;

    if (cnt == min_val)
      checkedStates_.push_back(true);
    else
      checkedStates_.push_back(false);
  }
}


// 18
IsSelectedStateBefore::IsSelectedStateBefore()
 : DynamicFeature() {}

IsSelectedStateBefore::~IsSelectedStateBefore() {}

void IsSelectedStateBefore::computeFeature(const set<ExecutionState*>& states)
{
  for (auto const& st: states) {
    if (st->selected_state.find(st) != st->selected_state.end()) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}


// 24~26
IsFrequentlySelectedBranch::IsFrequentlySelectedBranch(const int k)
  : DynamicFeature(), k_(k) {}

IsFrequentlySelectedBranch::~IsFrequentlySelectedBranch() {}

void IsFrequentlySelectedBranch::computeFeature(const set<ExecutionState*>& states)
{
  for (auto const& st: states) {
    Branch* br = st->lastBranch;

    if (k_ <= br->selectedCount)
      checkedStates_.push_back(true);
    else
      checkedStates_.push_back(false);
  }
}


// 27
IsNearSelectedBefore::IsNearSelectedBefore()
 : DynamicFeature() {}

IsNearSelectedBefore::~IsNearSelectedBefore() {}

void IsNearSelectedBefore::computeFeature(const set<ExecutionState*>& states)
{
  for (auto const& st: states) {
    Branch* br = st->lastBranch;
    string br_fn = br->functionName;

    if (br_fn.compare(ExecutionState::selected_function) == 0) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}



// 30~31
IsFreshBranch::IsFreshBranch()
 : DynamicFeature() {}

IsFreshBranch::~IsFreshBranch() {}

void IsFreshBranch::computeFeature(const set<ExecutionState*>& states)
{

  for (auto const& st: states) {
    Branch* br = st->lastBranch;

    if (!br->isCovered) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}



// 32~34
IsRecentlySelectedBranch::IsRecentlySelectedBranch(const unsigned k)
  : DynamicFeature(), k_(k) {}

IsRecentlySelectedBranch::~IsRecentlySelectedBranch() {}

void IsRecentlySelectedBranch::updateFeatureStateImpl(const set<ExecutionState*>& states)
{
  if (branch_history_.size() >= k_)
    branch_history_.pop_front();

  Branch* br = ExecutionState::selected_branch;
  if (br != 0)
    branch_history_.push_back(br);
}

void IsRecentlySelectedBranch::computeFeature(const set<ExecutionState*>& states)
{
  set<Branch*> branch_in_history(branch_history_.begin(), branch_history_.end());

  for (auto const& st: states) {
    Branch* br = st->lastBranch;

    if (branch_in_history.count(br) > 0) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}



// 35
IsInMostLargestNumOfUncovBr::IsInMostLargestNumOfUncovBr(Executor &_executor)
 : DynamicFeature(), executor(_executor) {}

IsInMostLargestNumOfUncovBr::~IsInMostLargestNumOfUncovBr() {}

void IsInMostLargestNumOfUncovBr::computeFeature(const set<ExecutionState*>& states)
{
  map<string, int> f = executor.numBranchesOfFunc;
  string largestFunc = max_element(f.begin(), f.end(),
                             [] (const pair<string, int>& p1, const pair<string, int>& p2)
                             { return p1.second < p2.second; })->first;

  for (auto const& st: states) {
    Branch* br = st->lastBranch;
    string br_fn = br->functionName;

    if (br_fn.compare(largestFunc) == 0) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}


// 40
IsInMostRecentlyReachedFunc::IsInMostRecentlyReachedFunc()
 : DynamicFeature() {}

IsInMostRecentlyReachedFunc::~IsInMostRecentlyReachedFunc() {}

void IsInMostRecentlyReachedFunc::computeFeature(const set<ExecutionState*>& states)
{
  for (auto const& st: states) {
    Branch* br = st->lastBranch;
    string br_fn = br->functionName;

    if (br_fn.compare(ExecutionState::recently_reached_function) == 0) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}


///////////////////////////////////////////////////////
////////////////////state features ////////////////////
///////////////////////////////////////////////////////

using pair_t = pair<uint64_t, ExecutionState*>;

// InstCount
#define INST_COUNT(A) theStatisticManager->getIndexedValue(stats::instructions, A->pc->info->id)
InstCount::InstCount()
 : DynamicFeature() {}

InstCount::~InstCount() {}

void InstCount::computeFeature(const set<ExecutionState*>& states)
{
  set<pair_t> st_set;
  for (auto const& st: states) {
    st_set.insert(make_pair(INST_COUNT(st), st)); 
  }

  auto st_set_end = st_set.begin();
  advance(st_set_end, states.size() / 0.1);

  for (auto const& st: states) {
    auto it = find(st_set.begin(), st_set_end, make_pair(INST_COUNT(st), st));
    if (it != st_set_end) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}


// CPInstCount //
#define CP_INST_COUNT(A) A->stack.back().callPathNode->statistics.getValue(stats::instructions) 
CPInstCount::CPInstCount()
 : DynamicFeature() {}

CPInstCount::~CPInstCount() {}

void CPInstCount::computeFeature(const set<ExecutionState*>& states)
{
  set<pair_t> st_set;
  for (auto const& st: states) {
    st_set.insert(make_pair(CP_INST_COUNT(st), st)); 
  }

  auto st_set_end = st_set.begin();
  advance(st_set_end, states.size() / 0.1);

  for (auto const& st: states) {
    auto it = find(st_set.begin(), st_set_end, make_pair(CP_INST_COUNT(st), st));
    if (it != st_set_end) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}


// Query Cost //
IsQueryCostLow::IsQueryCostLow()
 : DynamicFeature() {}

IsQueryCostLow::~IsQueryCostLow() {}

void IsQueryCostLow::computeFeature(const set<ExecutionState*>& states)
{
  int cnt=0;
  for (auto const& st: states) {
    if (st->queryCost.toSeconds() < .1) {
      checkedStates_.push_back(true);
      cnt++;
    }
    else {
      checkedStates_.push_back(false);
    }
  } 
}


// Min Dist to Uncov //
#define MIN_DIST_TO_UNCOV(A) computeMinDistToUncovered(A->pc, A->stack.back().minDistToUncoveredOnReturn)
MinDistToUncov::MinDistToUncov()
 : DynamicFeature() {}

MinDistToUncov::~MinDistToUncov() {}

void MinDistToUncov::computeFeature(const set<ExecutionState*>& states)
{
  set<pair_t> st_set;
  for (auto const& st: states) {
    uint64_t md2u = MIN_DIST_TO_UNCOV(st);
    if (!md2u)
      md2u = 10000;
    st_set.insert(make_pair(md2u, st)); 
  }

  auto st_set_end = st_set.begin();
  advance(st_set_end, states.size() / 0.1);

  for (auto const& st: states) {
    uint64_t md2u = MIN_DIST_TO_UNCOV(st);
    auto it = find(st_set.begin(), st_set_end, make_pair(md2u, st));
    if (it != st_set_end) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}

CovNew::CovNew()
 : DynamicFeature() {}

CovNew::~CovNew() {}

void CovNew::computeFeature(const set<ExecutionState*>& states)
{
  set<pair_t> st_set;
  for (auto const& st: states) {
    uint64_t isc = st->instsSinceCovNew;
    st_set.insert(make_pair(isc, st));
  }

  auto st_set_end = st_set.begin();
  advance(st_set_end, states.size() / 0.1);

  for (auto const& st: states) {
    uint64_t isc = st->instsSinceCovNew;
    auto it = find(st_set.begin(), st_set_end, make_pair(isc, st));
    if (it != st_set_end) {
      checkedStates_.push_back(true);
    }
    else {
      checkedStates_.push_back(false);
    }
  }
}

