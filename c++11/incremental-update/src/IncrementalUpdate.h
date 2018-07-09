/**
 * @brief Declaration of incremental update functions.
 */

/* INCLUDES ******************************************************************/

#include <cstdint>
#include <string>

/* DECLARATIONS **************************************************************/

namespace Updater
{

/**
 * @brief Computes. the number of bytes that should be downloaded in order to update a region map.
 *
 * @param S Serialized string with the catalog as a sequence of (region, version, size) tuples.
 * @param T Serialized string with the list of region already downloaded as a sequence of (region, version) tuples.
 * @param U The name of the region to update.
 *
 * @return The download size in bytes.
 */
int64_t computeDownloadSize(const std::string& S, const std::string& T, const std::string& U);

} // namespace Updater
