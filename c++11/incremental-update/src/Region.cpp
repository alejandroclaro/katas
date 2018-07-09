/**
 * @brief Implementation of region data structure.
 */

/* INCLUDES ******************************************************************/

#include <Region.h>

#include <sstream>

/* IMPLEMENTATION ************************************************************/

namespace Updater
{

Region
Region::read(const std::string& data)
{
  Region result;
  auto   endName    = data.find(',');
  auto   endVersion = data.find(',', endName + 1);

  result.m_name    = data.substr(0, endName);
  result.m_version = stoi(data.substr(endName + 1, endVersion - endName));

  return result;
}

std::map<std::string, Region>
Region::readCollection(const std::string& data)
{
  std::map<std::string, Region> result;
  std::string                   line;
  std::istringstream            input { data };

  while (getline(input, line))
  {
    auto item = read(line);
    result.insert(make_pair(item.getName(), item));
  }

  return result;
}

std::string
Region::getName() const
{
  return m_name;
}

size_t
Region::getVersion() const
{
  return m_version;
}

} // namespace Updater
