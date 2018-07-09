/**
 * @brief Region unit tests.
 */

/* INCLUDES ******************************************************************/

#include <Region.h>
#include <gmock/gmock.h>

/* USINGS ********************************************************************/

using namespace testing;
using namespace Updater;

/* UNIT TESTS ****************************************************************/

TEST(RegionTest, readRegion_wellFormedRecord_returnDeserializedItem)
{
  std::string data { "Panama,1" };
  auto region = Region::read(data);

  ASSERT_THAT(region.getName(), Eq("Panama"));
  ASSERT_THAT(region.getVersion(), Eq(1));
}

TEST(RegionTest, readRegions_wellFormedRecords_returnDeserializedregions)
{
  std::string data { "Panama,1\nCaracas,3" };
  auto regions = Region::readCollection(data);

  ASSERT_THAT(regions.size(), Eq(2));
  ASSERT_THAT(regions.find("Panama"), Ne(regions.end()));
  ASSERT_THAT(regions.find("Caracas"), Ne(regions.end()));
  ASSERT_THAT(regions.find("Caracas")->second.getName(), Eq("Caracas"));
  ASSERT_THAT(regions.find("Caracas")->second.getVersion(), Eq(3));
}
