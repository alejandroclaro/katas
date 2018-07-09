/**
 * @brief Implementation of incremental update functions.
 */

/* INCLUDES ******************************************************************/

#include <IncrementalUpdate.h>

#include <Catalog.h>
#include <Region.h>

#include <algorithm>

/* IMPLEMENTATION ************************************************************/

namespace Updater
{

int64_t
computeDownloadSize(const std::string& S, const std::string& T, const std::string& U)
{
  auto    catalog        = Catalog::readCollection(S);
  auto    regions        = Region::readCollection(T);
  auto    first          = catalog.lower_bound(U);
  auto    end            = catalog.upper_bound(U);
  auto    regionInfo     = regions.find(U);
  auto    currentVersion = regionInfo == regions.end() ? 0 : regionInfo->second.getVersion();
  int64_t result { 0 };

  if (first == catalog.end() || first->second.getName() != U)
    return -1;

  std::for_each(first, end, [&] (auto item)
  {
    if (currentVersion < item.second.getVersion())
      result += item.second.getSize();
  });

  return result;
}

} // namespace Updater
