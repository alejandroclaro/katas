/**
 * @brief Declaration of catalog data structure.
 */

/* INCLUDES ******************************************************************/

#include <cstdint>
#include <map>
#include <string>

/* DEFINITIONS ***************************************************************/

namespace Updater
{

class Catalog
{
  public:
  
    static Catalog read(const std::string& data);
    static std::multimap<std::string, Catalog> readCollection(const std::string& data);

  public:

    std::string getName() const;
    size_t getVersion() const;
    size_t getSize() const;

  private:

    std::string m_name;
    size_t      m_version;
    size_t      m_size;
};

} // namespace Updater
