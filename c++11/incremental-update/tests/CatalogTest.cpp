/**
 * @brief Catalog item unit tests.
 */

/* INCLUDES ******************************************************************/

#include <Catalog.h>
#include <gmock/gmock.h>

/* USINGS ********************************************************************/

using namespace testing;
using namespace Updater;

/* UNIT TESTS ****************************************************************/

TEST(CatalogTest, readItem_wellFormedRecord_returnDeserializedItem)
{
  std::string data { "Panama,1,30000" };
  auto        item = Catalog::read(data);

  ASSERT_THAT(item.getName(), Eq("Panama"));
  ASSERT_THAT(item.getVersion(), Eq(1));
  ASSERT_THAT(item.getSize(), Eq(30000));
}

TEST(CatalogTest, readCatalog_wellFormedRecords_returnDeserializedCatalog)
{
  std::string data { "Panama,1,30000\nCaracas,3,50000\nPanama,2,500" };
  auto        catalog = Catalog::readCollection(data);

  ASSERT_THAT(catalog.size(), Eq(3));
  ASSERT_THAT(catalog.find("Panama"), Ne(catalog.end()));
  ASSERT_THAT(catalog.find("Caracas"), Ne(catalog.end()));
  ASSERT_THAT(catalog.find("Caracas")->second.getName(), Eq("Caracas"));
  ASSERT_THAT(catalog.find("Caracas")->second.getVersion(), Eq(3));
  ASSERT_THAT(catalog.find("Caracas")->second.getSize(), Eq(50000));
}
