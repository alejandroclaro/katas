/**
 * @brief Declaration of region data structure.
 */

/* INCLUDES ******************************************************************/

#include <cstdint>
#include <map>
#include <string>

/* DEFINITIONS ***************************************************************/

namespace Updater
{

class Region
{
  public:
  
    static Region read(const std::string& data);
    static std::map<std::string, Region> readCollection(const std::string& data);

  public:

    std::string getName() const;
    size_t getVersion() const;

  private:

    std::string m_name;
    size_t      m_version;
};

} // namespace Updater
