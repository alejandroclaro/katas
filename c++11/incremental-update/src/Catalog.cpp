/**
 * @brief Implementation of catalog data structure.
 */

/* INCLUDES ******************************************************************/

#include <Catalog.h>

#include <sstream>

/* IMPLEMENTATION ************************************************************/

namespace Updater
{

Catalog
Catalog::read(const std::string& data)
{
  Catalog result;
  auto    endName    = data.find(',');
  auto    endVersion = data.find(',', endName + 1);

  result.m_name    = data.substr(0, endName);
  result.m_version = stoi(data.substr(endName + 1, endVersion - endName));
  result.m_size    = stoi(data.substr(endVersion + 1));

  return result;
}

std::multimap<std::string, Catalog>
Catalog::readCollection(const std::string& data)
{
  std::multimap<std::string, Catalog> result;
  std::string                         line;
  std::istringstream                  input { data };

  while (getline(input, line))
  {
    auto item = read(line);
    result.insert(make_pair(item.getName(), item));
  }

  return result;
}

std::string
Catalog::getName() const
{
  return m_name;
}

size_t
Catalog::getVersion() const
{
  return m_version;
}

size_t
Catalog::getSize() const
{
  return m_size;
}

} // namespace Updater
