/**
 * @brief Incremental update kata unit tests.
 */

/* INCLUDES ******************************************************************/

#include <IncrementalUpdate.h>
#include <gmock/gmock.h>

/* USINGS ********************************************************************/

using namespace testing;
using namespace Updater;

/* UNIT TESTS ****************************************************************/

TEST(IncrementalUpdateTest, computeDownloadSize_singleItemCatalogEmptyDb_returnTotalSize)
{
  std::string S0 { "Panama,1,20000" };
  std::string S1 { "Panama,1,30000" };
  std::string T { "" };
  std::string U { "Panama" };

  ASSERT_THAT(computeDownloadSize(S0, T, U), Eq(20000));
  ASSERT_THAT(computeDownloadSize(S1, T, U), Eq(30000));
}

TEST(IncrementalUpdateTest, computeDownloadSize_unknownRegion_returnError)
{
  std::string S { "Panama,1,20000" };
  std::string T { "" };
  std::string U { "Caracas" };

  ASSERT_THAT(computeDownloadSize(S, T, U), Eq(-1));
}

TEST(IncrementalUpdateTest, computeDownloadSize_multiItemCatalogEmptyDb_returnTotalSize)
{
  std::string S { "Panama,1,20000\nCaracas,1,80000" };
  std::string T { "" };
  std::string U { "Caracas" };

  ASSERT_THAT(computeDownloadSize(S, T, U), Eq(80000));
}

TEST(IncrementalUpdateTest, computeDownloadSize_multiPartCatalogEmptyDb_returnTotalSize)
{
  std::string S { "Panama,1,20000\nPanama,2,10000\nCaracas,1,80000" };
  std::string T { "" };
  std::string U { "Panama" };

  ASSERT_THAT(computeDownloadSize(S, T, U), Eq(30000));
}

TEST(IncrementalUpdateTest, computeDownloadSize_multiPartCatalogSingleItemDb_returnTotalSize)
{
  std::string S { "Panama,1,20000\nPanama,2,10000\nPanama,3,15000\nCaracas,1,80000" };
  std::string T { "Panama,1" };
  std::string U { "Panama" };

  ASSERT_THAT(computeDownloadSize(S, T, U), Eq(25000));
}

TEST(IncrementalUpdateTest, computeDownloadSize_multiPartCatalogMultiDb_returnTotalSize)
{
  std::string S { "Panama,1,20000\nPanama,2,10000\nCaracas,1,80000" };
  std::string T { "Panama,1\nToronto,2\nCaracas,1" };
  std::string U { "Caracas" };

  ASSERT_THAT(computeDownloadSize(S, T, U), Eq(0));
}
